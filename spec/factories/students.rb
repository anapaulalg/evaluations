FactoryGirl.define do
  factory :student do
    name      { Faker::Lorem.sentence(50) }
    image     { Faker::Lorem.sentence(200) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
