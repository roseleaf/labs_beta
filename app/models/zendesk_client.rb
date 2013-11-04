require 'zendesk_api' 
require 'oauth2'
require 'open-uri'

class ZendeskClient
    include OAuth2
    attr_accessor :oauth_session, :auth_url, :api_client, :subdomain, :url
    
    
  def initialize(subdomain)
    @subdomain = subdomain
    @url = "https://#{@subdomain}.zendesk.com"
    @oauth_session = OAuth2::Client.new(ENV['OAUTH_UNIQUE_ID'], ENV['OAUTH_CONFIG'], site: url, token_url: "/oauth/tokens", authorize_url: "/oauth/authorizations/new")
    @auth_url = @oauth_session.auth_code.authorize_url(:redirect_uri => ENV['OAUTH_RETURN_URL'], scope: "read write")
  end
  def token_return(code)
     # @token = @oauth_session.client_credentials.get_token(scope: "read write" )
      @oauth_session.auth_code.get_token(code, :redirect_uri => ENV['OAUTH_RETURN_URL'])
  end

  def create_client(token)
      @api_client = ZendeskAPI::Client.new do |c|
          c.access_token = token.token 
          c.url = "https://#{@subdomain}.zendesk.com/api/v2" 
          require 'logger' 
          # c.logger = Logger.new(STDOUT) 
          c.logger = Logger.new("#{Rails.root}/log/development.log") 
      end 
      ex = Extension.find(2)
      upload_from_github(ex)
  end
  def upload_from_github(extension)
    url = extension.download_url
    #url = "https://github.com/zendesk/bookmarks_app/archive/master.zip"
    uri = URI.parse(url)
    gh_response = open(url)

    upload_id = @api_client.connection.post "#{@url}/api/v2/apps/uploads", { :file => gh_response }
    create_job(upload_id, extension)
  end

  def create_job(upload_id, extension)
    job_id = @api_client.connection.post "#{@url}/apps.json", { "name" => extension.name, "short_description" => extension.short_description, "upload_id" => upload_id }
    while check_upload_status(job_id) != 'completed' 
      check_upload_status(job_id)
      sleep(5) 
    end

  end

  def check_upload_status(job_id)
    response = @api_client.connection.send.get "#{@url}/apps/job_statuses/{job_id}"
    status = response.status
    logger.info response
    return status
  end

  # def install_app(app_id, settings)
  #   @api_client.connection.send(:post, "#{@url}/apps/installations") do |req|
  #     req.data = { "app_id" => app_id, "settings" => settings }
  #   end
  # end

end



