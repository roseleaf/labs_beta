class SprocketsController < ActionController::Base
  caches_page :show, :if => Proc.new { SprocketsApplication.use_page_caching }
  
  def index
    show
  end

  def show
    sprocket = Sprocket.new(params[:id])
    render :text => sprocket.source, :content_type => "text/javascript"
  end
end
