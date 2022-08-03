class ProgramCrop < ApplicationRecord
  belongs_to :crop
  belongs_to :spray_program
  accepts_nested_attributes_for :crop
  validates :spray_program, uniqueness: { scope: :crop }
end
