# frozen_string_literal: true

class AddNameToFarm < ActiveRecord::Migration[6.1]
  def change
    add_column :farms, :name, :string
  end
end
