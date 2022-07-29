class ProgramDose < ApplicationRecord
  belongs_to :product
  belongs_to :spray_program
end
