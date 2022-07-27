class SprayersController < ApplicationController
  def new
    @sprayer = Sprayer.new
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

  def update
    @sprayer = Sprayer.find(params[:id])
    if @sprayer.update(sprayer_params)
      flash_notice(@sprayer, 'updated')
      redirect_to @sprayer
    else
      flash_errors(@sprayer)
      render 'edit'
    end
  end

  def edit
    @sprayer = Sprayer.find(params[:id])
  end

  def destroy
    @sprayer = Sprayer.find(params[:id])
    if @sprayer.destroy
      flash_notice(@sprayer, 'deleted')
    else
      flash_errors(@sprayer)
    end
    redirect_to sprayers_path
  end

  private

  def sprayer_params
    params.require(:sprayer).permit(:name, :capacity, :farm_id)
  end
end
