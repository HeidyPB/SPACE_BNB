class SpacecraftsController < ApplicationController
  def show
    @spacecrafts = Spacecraft.find(params[:id])
  end

  def index
    @spacecrafts = Spacecraft.all
  end
end
