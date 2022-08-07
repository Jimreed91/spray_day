class RemoveTotalDoseFromProgramDoses < ActiveRecord::Migration[6.1]
  def up
    change_table :program_doses, bulk: true do |t|
      t.remove :total_dose
      t.remove :tank_dose
    end
  end

  def down
    change_table :program_doses, bulk: true do |t|
      t.add_column :total_dose, :decimal
      t.add_column :tank_dose, :decimal
    end
  end
end
