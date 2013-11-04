require "uri"
class Api::V1::ZendeskClientController < ApplicationController
	respond_to :json
	before_filter :make_client, only: [ :get_auth_url, :callback, :passback ]

	def destroy
	end
	def get_auth_url
		auth_url = @client.auth_url
		render json: auth_url 
	end
	def callback
		code = params[:code]

		begin
			token = @client.token_return(code)

			logger.info("** token token token token **")
			logger.info(token.inspect)
			passback(token)
		rescue OAuth2::Error => e
			logger.info("** error error error error **")
			logger.error("OAuth 2 error: #{e.message}, #{e.code}")
			logger.error("OAuth 2 error: #{e.response}")
			get_auth_url
		end
	end

	def passback(token)
		@client.create_client(token)
		logger.info("iiiii")
		render json: @client.auth_url
		@client.upload_from_github(cookies[:extension])
		redirect_to OAUTH_CONFIG['return_url']		
	end
    def set_account
    	if params[:subdomain]
    		cookies[:subdomain] = params[:subdomain]
    		cookies[:extension] = params[:extension]
    	else
	        cookies[:subdomain] = "support"
	    end
    end

	private	
	def make_client
		set_account unless cookies[:subdomain]
		@client = ZendeskClient.new(cookies[:subdomain])
	end		

end