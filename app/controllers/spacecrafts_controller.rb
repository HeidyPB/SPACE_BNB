class SpacecraftsController < ApplicationController
  def show
    @spacecrafts = Spacecraft.find(params[:id])
  end
end
