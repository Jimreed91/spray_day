FactoryBot.define do
  factory :product do
    name { "#{Faker::Verb.ing_form} spray" }
    rate_per_ha { rand(0.5...10) }
    liquid { rand(0...10) > 5 }
    farm { FactoryBot.create(:farm) }
  end
end
