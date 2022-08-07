require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'to be valid with valid attributes' do
    product = build(:product)
    expect(product).to be_valid
  end

  it 'is not valid without a name' do
    product = build(:product, name: nil)
    expect(product).not_to be_valid
  end

  it 'is not valid without a rate' do
    product = build(:product, rate_per_ha: nil)
    expect(product).not_to be_valid
  end

  it 'is not valid without a farm' do
    product = build(:product, farm: nil)
    expect(product).not_to be_valid
  end

  it 'is not valid without a liquid/solid boolean' do
    product = build(:product, liquid: nil)
    expect(product).not_to be_valid
  end
end
