class ProductsController < ApplicationController
  def new
    @product = Product.new(product_params)
  end

  def create


  end

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Products.all
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private

  def product_params()
    params.require(:product).permit(:name, :rate_per_ha, :liquid)
  end
end
