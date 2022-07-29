FactoryBot.define do
  factory :program_sprayer do
    sprayer { nil }
    spray_program { nil }
    litres_per_min { '9.99' }
    speed { '9.99' }
  end
end
