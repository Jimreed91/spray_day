require 'rails_helper'

RSpec.describe SprayProgram, type: :model do
  it 'be valid with valid with valid attributes' do
    spray_program = build_stubbed(:spray_program, :with_assoc)
    expect(spray_program).to be_valid
  end
end
