FactoryBot.define do
  factory :product do
    name { "#{Faker::Verb.ing_form} spray" }
    rate_per_ha { rand(0.5...10) }
    farm { FactoryBot.create(:farm) }
    liquid { [true, false].sample }
  end
end
