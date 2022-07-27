class CreateSprayers < ActiveRecord::Migration[6.1]
  def change
    create_table :sprayers do |t|
      t.string :name
      t.integer :capacity
      t.references :farm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
