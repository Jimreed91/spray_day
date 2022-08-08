FactoryBot.define do
  factory :program_sprayer do
    sprayer { FactoryBot.create(:sprayer) }
    association :spray_program
    litres_per_min { rand(10...35) }
    speed { 7 }
  end
end
