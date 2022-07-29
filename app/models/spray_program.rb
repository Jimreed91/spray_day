class SprayProgram < ApplicationRecord
  belongs_to :farm
  has_one :user, through: :farm
  has_one :program_sprayer
  has_one :sprayer, through: :program_sprayer

end
