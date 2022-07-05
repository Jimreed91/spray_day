class FarmController < ApplicationController
  def new
    @farm = Farm.new
  end

  def create
    @farm = Farm.new(farm_params)
    if @farm.save
      redirect_to(@farm)
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
end
