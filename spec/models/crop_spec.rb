# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Crop, type: :model do
  it 'to be valid with valid attributes' do
    crop = build(:crop)
    expect(crop).to be_valid
  end

  it 'is not valid without a name' do
    crop = build(:crop, name: nil)
    expect(crop).not_to be_valid
  end

  it 'is not valid without an area value' do
    crop = build(:crop, hectares: nil)
    expect(crop).not_to be_valid
  end

  it 'is not valid without a row_spacing' do
    crop = build(:crop, row_spacing: nil)
    expect(crop).not_to be_valid
  end

  it 'is not valid without a farm' do
    crop = build(:crop, farm: nil)
    expect(crop).not_to be_valid
  end
end
