require "uri"
class Api::V1::ZendeskClientController < ApplicationController
	respond_to :json
	before_filter :make_client, only: [ :get_auth_url, :callback, :passback ]

	def destroy
	end
	def get_auth_url
		auth_url = @client.auth_url
		auth_response = {"auth_url"=> auth_url}.to_json
		render json: auth_response
	end	
	def callback
		code = params[:code]

		begin
			token = @client.token_return(code)
			passback(token)
		rescue OAuth2::Error => e
			logger.info("** error error error error **")
			logger.error("OAuth 2 error: #{e.message}, #{e.code}")
			logger.error("OAuth 2 error: #{e.response}")
			get_auth_url
		end
	end
	def passback(token)
		ticket = @client.create_client(token)
		render json: @client.auth_url
		# redirect_to OAUTH_CONFIG['return_url']		
	end
    def set_account
    	if params[:subdomain]
    		cookies[:subdomain] = params[:subdomain]
    	else
	        cookies[:subdomain] = "support"
	    end
	    make_client
    end

	private	
	def make_client
		@client = ZendeskClient.new(cookies[:subdomain])
		get_auth_url
	end		

end