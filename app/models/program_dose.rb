class ProgramDose < ApplicationRecord
  belongs_to :product
  belongs_to :spray_program

  validates :spray_program, uniqueness: { scope: :product }
end
