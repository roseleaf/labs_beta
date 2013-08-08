# CarrierWave.configure do |config|
#   config.root = Rails.root.join('tmp')
#   config.cache_dir = 'carrierwave'

#   config.s3_access_key_id = ENV['s3_access_key_id']
#   config.s3_secret_access_key = ENV['s3_secret_access_key']
#   config.s3_bucket = ENV['s3_bucket']
# end
AWSCONFIG = YAML.load_file("#{::Rails.root}/config/application.yml")[::Rails.env]

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => AWSCONFIG['s3_access_key_id'],                        # required
    :aws_secret_access_key  => AWSCONFIG['s3_secret_access_key']                        # required
    # :region                 => AWSCONFIG['region']                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = AWSCONFIG['s3_bucket']                     # required
  config.fog_public     = false                                   # optional, defaults to true
  # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
