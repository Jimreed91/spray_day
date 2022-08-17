require 'rails_helper'

RSpec.describe SprayProgram, type: :model do
  it 'to be valid with valid with valid attributes' do
    spray_program = build_stubbed(:spray_program, :with_assoc)
    expect(spray_program).to be_valid
  end

  it 'to be invalid with no crops' do
    spray_program = build_stubbed(:spray_program, :with_assoc, program_crops: [])
    expect(spray_program).not_to be_valid
  end

  it 'to be invalid with no products' do
    spray_program = build_stubbed(:spray_program, :with_assoc, program_doses: [])
    expect(spray_program).not_to be_valid
  end

  it 'to be invalid with no sprayer' do
    spray_program = build_stubbed(:spray_program, :with_assoc, program_sprayer: nil)
    expect(spray_program).not_to be_valid
  end
end
