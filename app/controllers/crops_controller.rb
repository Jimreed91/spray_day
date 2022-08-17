# frozen_string_literal: true

# Obligatory comment
class CropsController < ApplicationController
  def index
    @crops = Crop.where(farm: current_user.farm)
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
      flash_notice(@crop, 'created')
    else
      flash_errors(@crop)
      render :new
    end
  end

  def edit
    @crop = Crop.find(params[:id])
    @farms = Farm.where(user: current_user)
  end

  def update
    @crop = Crop.find(params[:id])
    @crop.update(crop_params)

    if @crop.save
      redirect_to crop_path(@crop)
      flash_notice(@crop, 'updated')
    else
      render :new, status: :unprocessable_entity
      flash_errors(@crop)
    end
  end

  def destroy
    @crop = Crop.find(params[:id])
    @crop.delete
    redirect_to crops_path
    flash_notice(@crop, 'deleted')
  end

  private

  def crop_params
    params.require(:crop).permit(:name, :year, :hectares, :row_spacing, :farm_id)
  end
end
