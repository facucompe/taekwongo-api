FactoryBot.define do
  factory :feed do
    title { Faker::Book.title }
    body { Faker::Lorem.sentence(10) }
    category { Feed.categories.keys.sample }
  end                 
end