class ProgramSprayer < ApplicationRecord
  belongs_to :sprayer
  belongs_to :spray_program

  validates :spray_program, uniqueness: { scope: :sprayer }
  validates :litres_per_min, :speed, presence: true
end
