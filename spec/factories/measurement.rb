FactoryBot.define do
  factory :measurement do
    association :training

    magnitude { Faker::Number.decimal(2) }
  end
end