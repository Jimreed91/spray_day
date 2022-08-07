# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Crop, type: :model do
  it 'is not valid without a name' do
    crop = create(:crop, name: nil)
    expect(crop).not_to be_valid
  end

  it 'is not valid without an area value' do
    crop = create(:crop, hectares: nil)
    expect(crop).not_to be_valid
  end

  it 'is not valid without a row_spacing' do
    crop = create(:crop, row_spacing: nil)
    expect(crop).not_to be_valid
  end

  it 'is not valid without a farm' do
    crop = create(:crop, farm: nil)
    expect(crop).not_to be_valid
  end
end
