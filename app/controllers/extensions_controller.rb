class ExtensionsController < ApplicationController

  def index
    @extensions = Extension.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @extensions }
    end
  end

  def show
    @extension = Extension.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @extension }
    end
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
        format.html { redirect_to @extension, notice: 'Extension was successfully created.' }
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
        format.html { redirect_to @extension, notice: 'Extension was successfully updated.' }
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
      format.html { redirect_to extensions_url }
      format.json { head :no_content }
    end
  end
end
