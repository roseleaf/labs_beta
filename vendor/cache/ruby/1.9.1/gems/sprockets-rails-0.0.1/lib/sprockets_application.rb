module SprocketsApplication
  mattr_accessor :use_page_caching
  self.use_page_caching = true

  def self.routes(map)
    map.resources(:sprockets, :only => [:index, :show])
  end
end
