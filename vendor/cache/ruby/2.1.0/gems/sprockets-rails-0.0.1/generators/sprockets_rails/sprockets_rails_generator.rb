class SprocketsRailsGenerator < Rails::Generator::Base
    
  def manifest
    record do |m|                                                            
      m.directory 'vendor/sprockets'
      m.directory 'app/javascripts'
      
      m.file      'application.js',                       'app/javascripts/application.js'
      m.file      '/../../../config/sprockets.yml',       'config/sprockets.yml'
      m.file      '/../../../tasks/sprockets_tasks.rake', 'lib/tasks/sprockets_tasks.rake'
    end
  end  
end