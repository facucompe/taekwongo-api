require 'carrierwave/storage/fog'
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',                        
    aws_access_key_id:     Rails.application.secrets.aws_access_key_id,       
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
    region:                Rails.application.secrets.fog_region,                  
    endpoint:              Rails.application.secrets.fog_endpoint
  }
  config.fog_directory  = 'taekwongo-files'
  config.fog_public     = true             
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
  config.storage = :fog
end