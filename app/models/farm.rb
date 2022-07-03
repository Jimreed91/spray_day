class Farm < ApplicationRecord
  has_many :crops
  belongs_to :user
end
