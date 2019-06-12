FactoryBot.define do
  factory :task do
    name { Faker::Lorem.word }
    deadline { Time.now.next_day }
    project
  end
end
