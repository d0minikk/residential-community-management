FactoryBot.define do
  factory :announcement do
    title { "Sample Announcement" }
    content { "This is a sample announcement." }
    association :community
    association :user
  end
end
