# frozen_string_literal: true

class Farm < ApplicationRecord
  has_many :crops
  belongs_to :user
end
