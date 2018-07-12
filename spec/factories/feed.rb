FactoryBot.define do
  factory :feed do
    title { Faker::Book.title }
    body { Faker::Lorem.sentence(10) }
    picture_url { Faker::Internet.url }
    category { Feed.categories.keys.sample }
  end                 
end