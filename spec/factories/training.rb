FactoryBot.define do
  factory :training do
    association :user
  
    title { Faker::Book.title }
    training_type { Training.training_types.keys.sample }

    trait :with_measurements do
      after(:create) do |training|
        create_list(:measurement, 3, training: training)
      end
    end
  end
end