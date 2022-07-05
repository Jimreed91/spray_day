# frozen_string_literal: true

class FarmsController < ApplicationController
  def new
    @farm = Farm.new
  end

  def create
    @farm = Farm.new(farm_params)
    @farm.user = current_user
    if @farm.save
      redirect_to @farm
    else
      render :new
    end
  end

  def show
    @farm = Farm.find(params[:id])
  end

  def index
    @farms = Farm.all
  end

  private

  def farm_params
    params.require(:farm).permit(:name, :user)
  end
end
