class SprayProgramsController < ApplicationController

  def new
    @spray_program = SprayProgram.new
    @spray_program.build_program_sprayer
  end

  def create
    @spray_program = SprayProgram.new(spray_program_params)

    if @spray_program.save
      flash[:notice] = "Spray program successfully created"
      redirect_to @spray_program
    else
      flash_errors(@spray_program)
      render 'new'

    end
  end

  def index
    @spray_programs = SprayProgram.where(farm: current_user)
  end

  def show
    @spray_program = SprayProgram.find(params[:id])
  end

  private

  def spray_program_params
    params.require(:spray_program).permit(:date, :farm_id, program_sprayer_attributes: [ :sprayer_id, :id ])
  end
end
