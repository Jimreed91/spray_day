class Product < ApplicationRecord
  belongs_to :farm
  has_one :user, through: :farm, dependent: :destroy
  has_many :program_doses, dependent: :destroy
  # has_many :spray_programs, through: :program_doses

  validates :name, :rate_per_ha, presence: true
  validates :liquid, inclusion: { in: [true, false] }
  validates_associated :farm
end
