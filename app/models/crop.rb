# frozen_string_literal: true

class Crop < ApplicationRecord
  belongs_to :farm
  has_one :user, through: :farm
end
