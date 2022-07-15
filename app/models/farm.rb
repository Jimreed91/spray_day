# frozen_string_literal: true

class Farm < ApplicationRecord
  has_many :crops, dependent: :destroy
  has_many :products, dependent: :destroy
  belongs_to :user
end
