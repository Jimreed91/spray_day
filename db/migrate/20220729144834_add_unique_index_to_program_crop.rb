class AddUniqueIndexToProgramCrop < ActiveRecord::Migration[6.1]
  def change
    add_index :program_crops, %i[crop_id spray_program_id], unique: true
  end
end
