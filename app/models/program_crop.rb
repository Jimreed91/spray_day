class ProgramCrop < ApplicationRecord
  belongs_to :crop
  belongs_to :spray_program
end
