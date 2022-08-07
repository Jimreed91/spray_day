class ProgramDose < ApplicationRecord
  belongs_to :product
  belongs_to :spray_program

  validates :spray_program, uniqueness: { scope: :product }

  def total_dose
    (spray_program.total_area * product.rate_per_ha).to_f
  end

  def tank_dose; end
end
