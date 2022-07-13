# frozen_string_literal: true

# Obligatory comment
class CropsController < ApplicationController
  def index
    @crops = Crop.where(farm: current_user)
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
    @crop = Crop.find(params[:id])
    @farms = Farm.where(user: current_user)
  end

  def update
    @crop = Crop.find(params[:id])
    @crop.update(crop_params)

    if @crop.save
      redirect_to crop_path(@crop)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @crop = Crop.find(params[:id])
    @crop.delete
    redirect_to crops_path
  end

  private

  def crop_params
    params.require(:crop).permit(:name, :year, :hectares, :row_spacing, :farm_id)
  end
end
