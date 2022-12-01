class SpacecraftsController < ApplicationController
  before_action :set_spacecraft, only: %i[show destroy]
  def index
    @spacecrafts = Spacecraft.all
  end

  def show
  end

  def new
    @spacecraft = Spacecraft.new
  end

  def create
    @spacecraft = Spacecraft.new(spacecraft_params)
    @spacecraft.user = current_user
    if @spacecraft.save
      redirect_to spacecraft_path(@spacecraft), notice: 'spacecrafts was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @spacecraft.destroy
    redirect_to spacecrafts_path(@spacecraft)
  end

  private

  def set_spacecraft
    @spacecraft = Spacecraft.find(params[:id])
  end

  def spacecraft_params
    params.require(:spacecraft).permit(:name, :velocity, :passenger_capacity, :price)
  end
end
