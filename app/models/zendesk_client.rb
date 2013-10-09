require 'zendesk_api' 
require 'oauth2' 

class ZendeskClient
    include OAuth2
    attr_accessor :oauth_session, :auth_url, :api_client, :subdomain
    
    
  def initialize(subdomain)
    @subdomain = subdomain
    url = "https://#{@subdomain}.zendesk.com"
    @oauth_session = OAuth2::Client.new(OAUTH_CONFIG['unique_id'], OAUTH_CONFIG['secret'], site: url, token_url: "/oauth/tokens", authorize_url: "/oauth/authorizations/new")
    @auth_url = @oauth_session.auth_code.authorize_url(:redirect_uri => OAUTH_CONFIG['return_url'], scope: "read write")
  end
  def token_return(code)
     # @token = @oauth_session.client_credentials.get_token(scope: "read write" )
      @oauth_session.auth_code.get_token(code, :redirect_uri => OAUTH_CONFIG['return_url'])
  end
  def get_ticket(token)
      @api_client = ZendeskAPI::Client.new do |c|
          c.access_token = token.token 
          c.url = "https://#{@subdomain}.zendesk.com/api/v2" 
          require 'logger' 
          c.logger = Logger.new(STDOUT) 
      end 
      output = @api_client.tickets.first
      puts "wwwwwwwwwwwwwwww#{output}"
      return output
  end


end


