FactoryBot.define do
  factory :sprayer do
    sequence(:name) { |n| "sprayer#{n}" }
    capacity { 1200 }
    association :farm
  end
end
