class ProductsController < ApplicationController
  def new
    @product = Product.new
    @farms = Farm.where(user: current_user)
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      flash.now[:alert] = @product.errors.full_messages.to_sentence
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
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    redirect_to products_path
  end

  def update
  end

  private

  def product_params
    params.require(:product).permit(:name, :rate_per_ha, :liquid, :farm_id)
  end
end
