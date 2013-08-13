CLOUDCONFIG = YAML.load_file("#{::Rails.root}/config/cloudinary.yml")[::Rails.env]

Cloudinary.config do |config|
  config.cloud_name = CLOUDCONFIG['cloud_name']
  config.api_key = CLOUDCONFIG['api_key']
  config.api_secret = CLOUDCONFIG['api_secret']
  config.cdn_subdomain = true
end