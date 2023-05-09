FactoryBot.define do
  factory :comment do
    # body { Faker::Hacker.say_something_smart }
    content { Faker::Hacker.say_something_smart }
    association :user, factory: :user
    association :movie, factory: :movie
    raty { 1 }
  end
end