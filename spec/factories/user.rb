FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    gender { User.genders.keys.sample }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    password_confirmation { password }
    country { Faker::Address.country }
    address { Faker::Address.street_address }
    province { Faker::Address.state }
    postal_code { Faker::Address.postcode }
  end                 
end