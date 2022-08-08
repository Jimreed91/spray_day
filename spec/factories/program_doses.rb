FactoryBot.define do
  factory :program_dose do
    product { create(:product) }
    association :spray_program
  end
end
