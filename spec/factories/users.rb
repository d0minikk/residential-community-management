FactoryBot.define do
  factory :user do
    sequence(:first_name) { |n| "FirstName#{n}" }
    sequence(:last_name)  { |n| "LastName#{n}" }
    sequence(:email)      { |n| "user#{n}@example.com" }
    association :community

    trait :with_announcements do
      after(:create) do |user|
        create_list(:announcement, 3, author: user)
      end
    end
  end
end
