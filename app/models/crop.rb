# frozen_string_literal: true

class Crop < ApplicationRecord
  belongs_to :farm
  has_one :user, through: :farm, dependent: :destroy
  has_many :program_crops, dependent: :nil
  has_many :spray_programs, through: :program_crops

  validates :name, presence: true
end
