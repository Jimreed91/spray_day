class Sprayer < ApplicationRecord
  belongs_to :farm
  has_one :user, through: :farm, dependent: :destroy
  has_many :spray_programs, through: :program_sprayer

  validates :name, :capacity, presence: true

end
