class AddUniqueIndexToProgramDoses < ActiveRecord::Migration[6.1]
  def change
    add_index :program_doses, %i[product_id spray_program_id], unique: true
  end
end
