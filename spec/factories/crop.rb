# frozen_string_literal: true

FactoryBot.define do
  factory :crop do
    name { "#{Faker::Verb.ing_form} apple" }
    year { rand(2001...2022) }
    hectares { rand(1.2...3.5) }
    row_spacing { rand(1.7...2.1) }
    farm { FactoryBot.create(:farm) }
  end
end
