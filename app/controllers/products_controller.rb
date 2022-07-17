class ProductsController < ApplicationController
  def new
    @product = Product.new
    @farms = Farm.where(user: current_user)
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
      flash_notice(@product, 'created')
    else
      flash_errors(@product)
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.where(farm: current_user)
  end

  def edit
    load_product
    flash_errors(@product)
  end

  def destroy
    load_product
    @product.delete
    redirect_to products_path
    flash_notice(@product, 'deleted')
  end

  def update
    load_product
    @product.update(product_params)
    if @product.save
      redirect_to @product
      flash_notice(@product, 'updated')
    else
      render :new
      flash_errors(@product)
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :rate_per_ha, :liquid, :farm_id)
  end

  def load_product
    @product = Product.find(params[:id])
  end
end
