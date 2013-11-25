class ApplicationController < ActionController::Base
  #protect_from_forgery
  skip_before_filter  :verify_authenticity_token

  before_filter :log_sesh

  def log_sesh
  	logger.info '--------------------'
  	logger.info session
  	logger.info '--------------------'
  end

  def zendesk_client
  	logger.info '====================='
  	logger.info session
  	logger.info '====================='
  	ZendeskClient.new( session[:subdomain], session[:extension] )
  end

end
