FactoryBot.define do
  factory :spray_program do
    date { '2022-07-29 19:03:17' }
    # total_volume { rand(500...3800) }
    # tanks_count { rand(1...4) }
    farm { FactoryBot.create(:farm) }
    trait :with_assoc do
      program_sprayer { FactoryBot.create(:program_sprayer) }
      program_crops { [FactoryBot.create(:program_crop)] }
      program_doses { [FactoryBot.create(:program_dose)] }
    end
  end
end
