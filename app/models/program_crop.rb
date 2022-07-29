class ProgramCrop < ApplicationRecord
  belongs_to :crop
  belongs_to :spray_program

  validates :spray_program, uniqueness: { scope: :crop }
end
