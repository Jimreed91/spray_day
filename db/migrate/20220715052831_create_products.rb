class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :rate_per_ha
      t.boolean :liquid
      t.references :farm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
