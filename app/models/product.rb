class Product < ApplicationRecord
  belongs_to :farm
  has_one :user, through: :farm, dependent: :destroy
end
