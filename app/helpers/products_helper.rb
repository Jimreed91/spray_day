module ProductsHelper
  # Returns correct units depending on product state
  def to_unit(liquid)
    liquid ? 'L' : 'Kg'
  end
end
