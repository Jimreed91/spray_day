class AddUniqueIndexToProgramSprayer < ActiveRecord::Migration[6.1]
  def change
    add_index :program_sprayers, %i[sprayer_id spray_program_id], unique: true
  end
end
