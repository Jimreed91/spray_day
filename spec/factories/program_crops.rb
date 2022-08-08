FactoryBot.define do
  factory :program_crop do
    crop { create(:crop) }
    association :spray_program
  end
end
