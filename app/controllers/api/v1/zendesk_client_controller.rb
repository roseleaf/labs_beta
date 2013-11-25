require "uri"
class Api::V1::ZendeskClientController < ApplicationController
	respond_to :json
	before_filter :set_session

	def get_auth_url
		zendesk_client.subdomain = session[:subdomain]
		zendesk_client.extension = session[:extension]
		auth_url = zendesk_client.auth_url
		response = { auth_url: auth_url }
		render json: response
	end
	def callback
		code = params[:code]
		zendesk_client.subdomain = session[:subdomain]
		zendesk_client.extension = session[:extension]		
		# logger.info("** CALLBACK IS GETTING CALLED ** CALLBACK IS GETTING CALLED **")
		# logger.ap params
		begin
			token = zendesk_client.token_return(code)
			passback(token)
		rescue OAuth2::Error => e
			logger.info("** error error error error **")
			logger.error("OAuth 2 error: #{e.message}, #{e.code}")
			logger.error("OAuth 2 error: #{e.response}")
			get_auth_url
		end
	end

	def passback(token)
		zendesk_job_id = zendesk_client.create_client(token)
		logger.info("iiiii")
		logger.info(zendesk_job_id)
		# job = Job.new()
		# job.external_id = zendesk_job_id["job_id"]
		# job.save!
		response = { data: zendesk_job_id }
		# job_callback(zendesk_job_id["job_id"])
		render json: response
	end	

    def query_job
    	job_id = params[:job_id]
    	resp = Job.find(job_id)
    	response = { data: resp }
    	render json: response
    end
    def job_callback(zendesk_job_id)
    	puts "()()()()()()"
    	zendesk_client.create_job(zendesk_job_id)
#    	thread = Thread.new { loop { check_job_status(thread, zendesk_job_id, job.id) } }
		#until job.status == "completed" || job.status == "failed" do
		# 4.times do
		# 	zendesk_client.check_job( zendesk_job_id, job )
		# end
		# thread = Thread.new { loop { sleep 1; check_job_status(thread, zendesk_job_id, job.id); break unless thread.alive?; thread.run } }
		# sleep(2.0)
		#Thread.kill(t)
	end    	
    def check_job_status( zendesk_job_id, job)
    	puts "what are we doing in here?"
		# response = zendesk_client.api_client.connection.get("#{zendesk_client.url}/api/v2/apps/job_statuses/{zendesk_job_id}.json")
		# puts "purrrrrrrrrrrrrrs"
		# puts job
		#job = Job.find(job_id)
		# puts ")))))((((("
		# puts response
		# job.status = response.job_status
		# job.app_id = response.app_id if response.job_status == "completed"
		# job.save!
		# if response.job_status == "completed" || response.job_status == "failed"
		# 	Thread.kill(thread)
		# end

    end

    ##############################################################################
    ############################# WHERE I LEFT OFF ###############################
    ##############################################################################
    # Going to create a jobs model that simply stores ids and statuses in the db.
    # When the "callback" is called (ember app passes us the "code"), going to 
    # create an instance of this model and give the instance's id back to the ember 
    # app.

    # The rails app will immediately start querying zendesk using the same client 
    # we've just created, but every time we get a new status, we set the model's 
    # property to that status. That way, ember app can just query query job to get
    # @job's status property.

    # since stupidly the session really doesn't persist between requests, and even
    # between sending us the code and asking for the status, the client is logged 
    # out.
    ##############################################################################
    ##############################################################################
    ##############################################################################


    # jobCallback: function(resp) {
    #   // console.log("job response ", resp);
    #   var jobPath = resp.job_status.url,
    #     self = this;
    #   intId = setInterval(function(){self.checkJobStatus(jobPath);}, 1000);
    # },
    # checkJobStatus: function(path){
    #   this.ajax('jobReq', path).done(function(data){
    #     puts data.job_status
    #     if (data.job_status.status == "completed" || data.job_status.status == "failed") {
    #       clearInterval(intId);
    # 		do stuff with data response...
    #     }
    #   });
    # },
    private
    def set_session
		session[:subdomain] = params[:subdomain] if params[:subdomain]
		session[:return_url] = params[:return_url] if params[:return_url]
		session[:code] = params[:code] if params[:code]
		session[:extension] = params[:extension] if params[:extension]
	    logger.info("jijijiji")
	    logger.ap(params) 
    end
    def set_parameters
    	settings = params[:app_settings]
		zendesk_client.connection.post("#{zendesk_client.url}/api/v2/apps/installations.json", {app_id: params[:app_id], settings: settings})
	end

end