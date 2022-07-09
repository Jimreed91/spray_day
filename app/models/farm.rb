# frozen_string_literal: true

class Farm < ApplicationRecord
  has_many :crops, dependent: :destroy
  belongs_to :user
end
