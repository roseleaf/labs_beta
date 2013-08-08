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
