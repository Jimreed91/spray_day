# frozen_string_literal: true

# Farm migration folder to link users to their farm info and
# link give access to data for spray calculations
class CreateFarms < ActiveRecord::Migration[6.1]
  def change
    create_table :farms, &:timestamps
  end
end
