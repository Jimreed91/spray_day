class CreateSprayPrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :spray_programs do |t|
      t.datetime :date
      t.decimal :volume_per_tank
      t.decimal :total_volume
      t.integer :tanks_count
      t.references :farm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
