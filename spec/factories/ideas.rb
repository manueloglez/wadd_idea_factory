FactoryBot.define do
  factory :idea do

    title { Faker::Hacker.say_something_smart }
    description { Faker::ChuckNorris.fact }
    
  end
end
