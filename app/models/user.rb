# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :farm, dependent: :destroy
  has_many :crops, through: :farm
  has_many :products, through: :farm
  after_create :create_farm

  private

  def create_farm
    self.farm = Farm.create(name: 'Your Farm')
  end
end
