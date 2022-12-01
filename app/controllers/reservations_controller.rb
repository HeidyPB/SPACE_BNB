class ReservationsController < ApplicationController
  before_action :set_spacecraft, only: [ :new, :create ]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.spacecraft = Spacecraft.find(params[:spacecraft_id])
    if @reservation.save
      redirect_to spacecraft_path(@spacecraft), notice: "Spacecraft was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def dashboard
    @user = current_user
    @user_reservations = @user.reservations
    @user_spacecrafts = @user.spacecrafts
    @reservations = Reservation.all
    # raise
  end

  private

  def set_spacecraft
    @spacecraft = Spacecraft.find(params[:spacecraft_id])
  end

  def reservation_params
    params.require(:reservation).permit(:reservation_status, :comment)
  end
end
