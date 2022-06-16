class CreateCrops < ActiveRecord::Migration[6.1]
  def change
    create_table :crops do |t|
      t.string :name
      t.integer :year
      t.decimal :hectares
      t.decimal :row_spacing

      t.timestamps
    end
  end
end
