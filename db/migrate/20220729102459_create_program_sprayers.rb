class CreateProgramSprayers < ActiveRecord::Migration[6.1]
  def change
    create_table :program_sprayers do |t|
      t.references :sprayer, null: false, foreign_key: true
      t.references :spray_program, null: false, foreign_key: true
      t.decimal :litres_per_min
      t.decimal :speed

      t.timestamps
    end
  end
end
