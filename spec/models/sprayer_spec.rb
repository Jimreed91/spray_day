require 'rails_helper'

RSpec.describe Sprayer, type: :model do
  it 'to be valid with valid attributes' do
    sprayer = build_stubbed(:sprayer)
    expect(sprayer).to  be_valid
  end

  it 'to be invalid without a name' do
    sprayer = build_stubbed(:sprayer, name: nil)
    expect(sprayer).not_to be_valid
  end

  it 'to be invalid without a capacity' do
    sprayer = build_stubbed(:sprayer, capacity: nil)
    expect(sprayer).not_to be_valid
  end
end
