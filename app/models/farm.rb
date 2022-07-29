# frozen_string_literal: true

class Farm < ApplicationRecord
  has_many :crops, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :sprayers, dependent: :destroy
  has_many :spray_programs, dependent: :destroy
  belongs_to :user
end
