FactoryBot.define do
  factory :building do
    sequence(:name) { |n| "Building #{n}" }
    association :community
  end
end
