FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    password_confirmation { password }
    country { Faker::Address.country }
    address { Faker::Address.street_address }
    province { Faker::Address.state }
    postal_code { Faker::Address.postcode }
  end                 
end