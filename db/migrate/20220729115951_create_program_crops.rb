class CreateProgramCrops < ActiveRecord::Migration[6.1]
  def change
    create_table :program_crops do |t|
      t.references :crop, null: false, foreign_key: true
      t.references :spray_program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
