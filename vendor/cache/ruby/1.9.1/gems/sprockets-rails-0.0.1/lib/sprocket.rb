require "fileutils"

class Sprocket
  attr_reader :group
  
  def initialize(group='default')
    group = 'default' if group.nil?
    @group = group.to_sym
  end
  
  def source
    concatenation.to_s
  end
  
  def install_script
    # /public/sprocktes might not exist yet, and sprockets-1.0.2 throws an exception
    FileUtils.mkdir_p(File.dirname(asset_path))
    concatenation.save_to(asset_path)
  end
  
  def install_assets
    secretary.install_assets
  end
  
  class << self
    def configurations
      @conf ||= YAML.load(IO.read(Sprocket.configuration_path)) || {}
      @conf.keys
    end
  
    def configuration_path
      File.join(Rails.root, "config", "sprockets.yml")
    end
  end
  
  protected
    def secretary
      @secretary ||= Sprockets::Secretary.new(configuration.merge(:root => Rails.root))
    end
  
    def configuration
      load_configuration
    end
    
    def load_configuration
      @conf ||= YAML.load(IO.read(Sprocket.configuration_path)) || {}
      if @conf[group]
        @conf[group]
      else
        {}
      end
    end

    def concatenation
      secretary.reset! unless source_is_unchanged?
      secretary.concatenation
    end
    
    def asset_path
      if group == :default
        File.join(Rails.public_path, "sprockets.js")
      else
        File.join(Rails.public_path, "sprockets", "#{group}.js")
      end
    end

    def source_is_unchanged?
      previous_source_last_modified, @source_last_modified = 
        @source_last_modified, secretary.source_last_modified
        
      previous_source_last_modified == @source_last_modified
    end
  
end
