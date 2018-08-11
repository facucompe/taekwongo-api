FactoryBot.define do
  factory :competition do
    name { Faker::Book.title }
    city { Faker::Address.city }
    country { Faker::Address.country }
    start_date { Faker::Date.forward(100) }
    end_date { start_date + 7 }
    category { Competition.categories.keys.sample }
  end
end