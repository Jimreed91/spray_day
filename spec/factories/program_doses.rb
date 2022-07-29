FactoryBot.define do
  factory :program_dose do
    total_dose { "9.99" }
    tank_dose { "9.99" }
    product { nil }
    spray_program { nil }
  end
end
