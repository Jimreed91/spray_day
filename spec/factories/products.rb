FactoryBot.define do
  factory :product do
    name { "MyString" }
    rate_per_ha { "9.99" }
    liquid { false }
    farm { nil }
  end
end
