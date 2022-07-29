class SprayProgram < ApplicationRecord
  belongs_to :farm
  has_one :user, through: :farm

  has_one :program_sprayer, dependent: :destroy
  has_many :program_crops, dependent: :destroy
  has_many :program_doses, dependent: :destroy

  has_one :sprayer, through: :program_sprayer
  has_many :crops, through: :program_crops
  has_many :products, through: :product_doses
end
