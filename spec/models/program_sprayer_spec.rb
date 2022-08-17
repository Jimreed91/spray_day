require 'rails_helper'

RSpec.describe ProgramSprayer, type: :model do
  it 'to be valid with valid attributes' do
    program_sprayer = build_stubbed(:program_sprayer)
    expect(program_sprayer).to be_valid
  end

  it 'to be invalid with no flow rate' do
    program_sprayer = build_stubbed(:program_sprayer, litres_per_min: nil)
    expect(program_sprayer).not_to be_valid
  end

  it 'to be invalid with no speed' do
    program_sprayer = build_stubbed(:program_sprayer, speed: nil)
    expect(program_sprayer).not_to be_valid
  end
end
