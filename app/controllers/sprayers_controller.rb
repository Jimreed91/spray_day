class SprayersController < ApplicationController

  def new
    @sprayer = Sprayer.new()
  end

  def create
    @sprayer = Sprayer.new(sprayer_params)
    if @sprayer.save
      redirect_to @sprayer
      flash_notice(@sprayer, 'created')
    else
      flash_errors(@sprayer)
      render :new
    end
  end

  def index
    @sprayers = Sprayer.where(farm: current_user)
  end

  def show
    @sprayer = Sprayer.find(params[:id])
  end

  private

  def sprayer_params
    params.require(:sprayer).permit(:name, :capacity, :farm_id)
  end
end
