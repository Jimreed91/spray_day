# frozen_string_literal: true

class CreateCrops < ActiveRecord::Migration[6.1]
  def change
    create_table :crops do |t|
      t.string :name
      t.integer :year
      t.decimal :hectares
      t.decimal :row_spacing
      t.references :farm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
