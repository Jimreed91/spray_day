class CropsController < ApplicationController
  def index
    @crops = Crop.all
  end

  def show
    @crop = Crop.find(params[:id])
  end

  def new
    @crop = Crop.new
    @farms = Farm.where(user: current_user)
  end

  def create
    @crop = Crop.new(crop_params)

    if @crop.save
      redirect_to crop_path(@crop)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
  end

  private
  def crop_params
    params.require(:crop).permit(:name, :year, :hectares, :row_spacing, :farm_id)
  end
end
