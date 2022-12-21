class SpacecraftsController < ApplicationController
  before_action :set_spacecraft, only: %i[show edit update destroy]
  def index
    @spacecrafts = policy_scope(Spacecraft)
  end

  def show
  end

  def new
    @spacecraft = Spacecraft.new
    authorize @spacecraft
  end

  def create
    @spacecraft = Spacecraft.new(spacecraft_params)
    @spacecraft.user = current_user
    authorize @spacecraft
    if @spacecraft.save
      redirect_to spacecraft_path(@spacecraft), notice: 'spacecrafts was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @spacecraft.update(spacecraft_params)
      redirect_to spacecraft_path(@spacecraft)
    else
      render :edit
    end
  end

  def destroy
    @spacecraft.destroy
    redirect_to spacecrafts_path(@spacecraft)
  end

  private

  def set_spacecraft
    @spacecraft = Spacecraft.find(params[:id])
    authorize @spacecraft
  end

  def spacecraft_params
    params.require(:spacecraft).permit(:name, :velocity, :passenger_capacity, :price, :photo, :personnage)
  end
end
