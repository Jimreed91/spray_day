# frozen_string_literal: true

class CreateFarms < ActiveRecord::Migration[6.1]
  def change
    create_table :farms, &:timestamps
  end
end
