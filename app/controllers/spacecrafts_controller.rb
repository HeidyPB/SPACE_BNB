class SpacecraftsController < ApplicationController
  def show
    @spacecraft = Spacecraft.find(params[:id])
  end

  def index
    @spacecrafts = Spacecraft.all
  end

  def new
    @spacecraft = Spacecraft.new
  end

  def create
    @spacecraft = Spacecraft.new(spacecraft_params)
    if @spacecraft.save
      redirect_to spacecraft_path(@spacecraft), notice: 'spacecrafts was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def spacecraft_params
    params.require(:spacecraft).permit(:name, :velocity, :passenger_capacity, :price)
  end
end
