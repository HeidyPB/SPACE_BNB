class ReservationsController < ApplicationController
  # before_action :set_reservation, only: [ :show ]
  # before_action :set_spacecraft, only: [ :new, :create ]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to @spacecraft, notice: "Spacecraft was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # def set_reservation
   # @reservation = Reservation.find(params[:id])
  # end

  def set_spacecraft
    @spacecraft = Spacecraft.find(params[:spacecraft_id])
  end

  def reservation_params
    params.require(:reservation).permit(:comment)
    # we will need the parametre :reservation_status after.
  end
end
