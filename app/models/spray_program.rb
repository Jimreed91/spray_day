class SprayProgram < ApplicationRecord
  belongs_to :farm
  has_one :user, through: :farm

  has_one :program_sprayer, dependent: :destroy
  has_many :program_crops, inverse_of: :spray_program, dependent: :destroy
  has_many :program_doses, dependent: :destroy

  has_one :sprayer, through: :program_sprayer
  has_many :crops, through: :program_crops
  has_many :products, through: :product_doses

  accepts_nested_attributes_for :program_sprayer
  accepts_nested_attributes_for :program_crops, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :program_doses, reject_if: :all_blank, allow_destroy: true

  # validates_associated :program_sprayer
end
