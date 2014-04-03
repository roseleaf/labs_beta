def process_config
  if (config = ENV['CONFIG'] || config = ENV['CONFIGURATION']) && !Sprocket.configurations.include?(config)
    raise "Configuration #{config} doesn't exist. Valid configurations: #{Sprocket.configurations.to_sentence}." 
  end
  
  return config
end

namespace :sprockets do
  desc "Generate and install the Sprockets concatenated JavaScript file for all configuration groups. Generate and install for a specific configuration by specifying CONFIG=<name>."
  task :install_script => :environment do
    if config = process_config
      Sprocket.new(config).install_script
    else
      Sprocket.configurations.each { |configuration| Sprocket.new(configuration).install_script }
    end
  end
  
  desc "Install any assets provided by Sprockets script, for all configuration groups. Install assets for a specific configuration by specifying CONFIG=<name>."
  task :install_assets => :environment do
    if config = process_config
      Sprocket.new(config).install_assets
    else
      Sprocket.configurations.each { |configuration| Sprocket.new(configuration).install_assets }
    end
  end
end
