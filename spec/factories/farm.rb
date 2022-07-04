FactoryBot.define do
  factory :farm do
    user { FactoryBot.create(:user) }
    sequence(:name) { |n| "Farm #{n}"}
  end
end
