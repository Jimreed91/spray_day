# frozen_string_literal: true

# Creating reference to user in farms
class AddFarmToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :farms, :user, null: false, foreign_key: true
  end
end
