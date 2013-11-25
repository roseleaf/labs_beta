class Api::V1::JobsController < ApplicationController
	respond_to :json
	def show
    	respond_with Job.find(params[:id])
	end
	def new
		@job = Job.new
		respond_to do |format|
		  format.json { render json: @job }
		end
	end	
end