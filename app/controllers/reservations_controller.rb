class ReservationsController < ApplicationController
  before_action :set_spacecraft, only: [ :new, :create ]

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.spacecraft = Spacecraft.find(params[:spacecraft_id])
    authorize @reservation
    if @reservation.save
      redirect_to spacecraft_path(@spacecraft), notice: "Your reservation was successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def dashboard
    @user = current_user
    @user_reservations = @user.reservations
    @user_spacecrafts = @user.spacecrafts
    @reservations = Reservation.all
    authorize @reservations
    # raise
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(status_params)
    authorize @reservation
  end

  private

  def set_spacecraft
    @spacecraft = Spacecraft.find(params[:spacecraft_id])
  end

  def reservation_params
    params.require(:reservation).permit(:comment)
  end

  def status_params
    params.require(:reservation).permit(:reservation_status)
  end
end
