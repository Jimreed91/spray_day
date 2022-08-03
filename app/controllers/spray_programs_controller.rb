class SprayProgramsController < ApplicationController
  def new
    @spray_program = SprayProgram.new
    @spray_program.build_program_sprayer
    @spray_program.program_crops.build
    @spray_program.program_doses.build
  end

  def create
    @spray_program = SprayProgram.new(spray_program_params)
    if @spray_program.save
      flash[:notice] = 'Program created'
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

  def edit
    @spray_program = SprayProgram.find(params[:id])
  end

  def update
    @spray_program = SprayProgram.find(params[:id])
    if @spray_program.update(spray_program_params)
      flash[:success] = 'Spray program was successfully updated'
      redirect_to @spray_program
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  def destroy
    @spray_program = SprayProgram.find(params[:id])
    if @spray_program.destroy
      flash[:success] = 'Object was successfully deleted.'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to spray_programs_url
  end

  private

  def spray_program_params
    params.require(:spray_program).permit(:date, :farm_id,
                                          program_sprayer_attributes: %i[sprayer_id id litres_per_min speed],
                                          program_crops_attributes: %i[crop_id id _destroy],
                                          program_doses_attributes: %i[product_id id _destroy])
  end
end
