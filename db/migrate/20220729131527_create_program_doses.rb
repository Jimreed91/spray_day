class CreateProgramDoses < ActiveRecord::Migration[6.1]
  def change
    create_table :program_doses do |t|
      t.decimal :total_dose
      t.decimal :tank_dose
      t.references :product, null: false, foreign_key: true
      t.references :spray_program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
