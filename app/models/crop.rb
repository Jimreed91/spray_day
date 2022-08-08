# frozen_string_literal: true

class Crop < ApplicationRecord
  belongs_to :farm
  has_one :user, through: :farm, dependent: :destroy
  has_many :program_crops, dependent: :nullify
  has_many :spray_programs, through: :program_crops

  validates :name, :hectares, :row_spacing, presence: true
  validates_associated :farm

end
