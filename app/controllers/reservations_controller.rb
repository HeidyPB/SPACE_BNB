class ReservationsController < ApplicationController
  def show
    @reservation = reservation.find(params[:starcraft_id])
  end

  def dashboard
  end
end
