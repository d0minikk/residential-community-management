FactoryBot.define do
  factory :unit do
    sequence(:number) { |n| "Unit #{n}" }
    association :building
  end
end
