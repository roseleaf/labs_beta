require 'zendesk_api' 
require 'oauth2'
require 'open-uri'

class ZendeskClient
    include OAuth2
    attr_accessor :oauth_session, :auth_url, :api_client, :subdomain, :url, :extension
    
  def initialize(subdomain, ex)
    @subdomain = subdomain
    @extension = ex
    puts "oo oo oo oo oo oo oo oo"
    puts subdomain
    @url = "https://#{@subdomain}.zendesk.com"
    puts @url
    @oauth_session = OAuth2::Client.new(ENV['OAUTH_UNIQUE_ID'], ENV['OAUTH_CONFIG'], site: url, token_url: "/oauth/tokens", authorize_url: "/oauth/authorizations/new")
    @auth_url = @oauth_session.auth_code.authorize_url(:redirect_uri => ENV['OAUTH_RETURN_URL'], scope: "read write")
  end
  def token_return(code)
    puts "mememememememe"
    puts @oauth_session.inspect
     # @token = @oauth_session.client_credentials.get_token(scope: "read write" )
      @oauth_session.auth_code.get_token(code, :redirect_uri => ENV['OAUTH_RETURN_URL'])
  end

  def create_client(token)
    puts @subdomain
    puts "wtfwtfwtfwtf wtf wtfwtfwtfwtf"
    ext = Extension.find(@extension)
    puts "meeeeoooowww"
    puts ext
      @api_client = ZendeskAPI::Client.new do |c|
          c.access_token = token.token 
          c.url = "https://#{@subdomain}.zendesk.com/api/v2" 
          require 'logger' 
          # c.logger = Logger.new(STDOUT) 
          c.logger = Logger.new("#{Rails.root}/log/development.log") 
      end 
      # ex = Extension.find(2)
      upload_from_github(ext)
  end
  def upload_from_github(extension)
    url = extension.download_url
    puts "ooooooooooooooo"
    puts extension.inspect
    #url = "https://github.com/zendesk/bookmarks_app/archive/master.zip"
    uri = URI.parse(url)
    gh_response = open(url)

    upload_id = @api_client.connection.post "#{@url}/api/v2/apps/uploads", { :file => gh_response }
    puts "kikikikikikikikikikikikikikikikikikiki"
    puts upload_id.body
    puts upload_id.headers
    puts upload_id.status
    create_job(upload_id, extension)
  end

  def create_job(upload_id, extension)
    job_resp = @api_client.connection.post "#{@url}/api/v2/apps", { name: extension.name, short_description: extension.short_description, upload_id: upload_id.body["id"].to_s }
    puts "jijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijijiji"
    job_id = job_resp.body["job_id"]
    job = Job.create(:external_id => job_id)
    puts job.inspect

    4.times { check_job( job_id, job ) }
    return job.id
    #return job_id.body
  end

  def check_job( zendesk_job_id, job )
    
    response = @api_client.connection.get "#{@url}/api/v2/apps/job_statuses/#{zendesk_job_id}.json"
    puts "purrrrrrrrrrrrrrs"
    puts job.inspect
    puts zendesk_job_id
    puts ")))))((((("
    puts response.inspect
    job.status = response.body["status"]
    job.app_id = response.body["app_id"] if response.body["app_id"]
    job.save!
    response.status #['job_status']
  end

end