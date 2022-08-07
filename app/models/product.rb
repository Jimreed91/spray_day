class Product < ApplicationRecord
  belongs_to :farm
  has_one :user, through: :farm, dependent: :destroy
  has_many :program_doses, dependent: :destroy

  validates :name, :rate_per_ha, :liquid, presence: true
  validates_associated :farm

end
