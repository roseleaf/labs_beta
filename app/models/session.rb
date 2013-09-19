require 'httparty'
class Session
  include HTTParty
  base_uri ''
  attr_accessor :auth, :options, :subdomain, :client


  def initialize(u, token)
	@auth = {username: "#{u}/token", password: token }
	@options = {}
  end

  def self.setup(u, token, url)
  	@client = Session.new(u, token)
  	Session.base_uri url
  	@client
  end

  def logout
  	@client = nil
  	@auth = nil
  end

  def upload_app( extension )
  	extension_file = HTTParty.get(extension[:download_zip_url])
  	options.merge!({ :body => { :uploaded_data => extension_file }, basic_auth: @auth })
  	self.class.post("/api/v2/apps/uploads.json", options)
  end
  # which can be :friends, :user or :public
  # options[:query] can be things like since, since_id, count, etc.
  def timeline(which=:friends, options={})
    options.merge!({:basic_auth => @auth})
    self.class.get("/statuses/#{which}_timeline.json", options)
  end

  def post(text)
    options = { :body => {:status => text}, :basic_auth => @auth }
    self.class.post('/statuses/update.json', options)
  end
end

myClient = Session.setup("roseleaf.red@gmail.com", "qzwUKyrhj7BD9Lcrd1H8JPFS87VSFoyirZNK9vuv", "https://roseleaf.zendesk.com")
myex = { download_zip_url: "https://github.com/zendesklabs/show_email_app/archive/master.zip" }