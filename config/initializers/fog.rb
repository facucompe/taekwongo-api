require 'carrierwave/storage/fog'
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAII7WP7RJ5NQU4BMQ',       
    aws_secret_access_key: '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',
    region:                'eu-east-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'name_of_bucket'                                      # required
  config.fog_public     = true                                                  # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
  config.storage = :fog
end