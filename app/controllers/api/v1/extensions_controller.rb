class Api::V1::ExtensionsController < ApplicationController
  respond_to :json    
  # before_filter :restrict_access, :except => [:index, :show]


  def index
    respond_with Extension.all
  end

  def show
    puts "meeeeeep"
    respond_with Extension.find(params[:id])
  end

  def new
    @extension = Extension.new

    respond_to do |format|
      format.json { render json: @extension }
    end
  end

  def edit
    @extension = Extension.find(params[:id])
  end

  def create
    @extension = Extension.new(params[:extension])

    respond_to do |format|
      if @extension.save
        format.json { render json: @extension, status: :created, location: @extension }
      else
        format.json { render json: @extension.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @extension = Extension.find(params[:id])

    respond_to do |format|
      if @extension.update_attributes(params[:extension])
        format.json { head :no_content }
      else
        format.json { render json: @extension.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @extension = Extension.find(params[:id])
    @extension.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
  def github_push
    puts "*******************************************************"
    push = JSON.parse(params[:payload])
    @extension = Extension.where(github_id: push['repository']['id']).first
    puts "I got some JSON: #{@extension}"

    if (push['head_commit']['modified'].include?('README.md') || push['head_commit']['added'].include?('README.md')) && @extension
      @extension.fetch_readme
      @extension.save!      
    end
    respond_to do |format|
      format.json { head :no_content }
    end    
  end
  # def callreadme(ghid)
  #   @extension = Extension.where(github_id: ghid).first
  #   @extension.fetch_readme
  #   @extension.save
  # end

private

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
  	  ApiKey.exists?(access_token: token)
	end
  end    
end
