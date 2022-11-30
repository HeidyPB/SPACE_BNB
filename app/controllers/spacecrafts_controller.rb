class SpacecraftsController < ApplicationController
  def show
    @spacecraft = Spacecraft.find(params[:id])
  end

  def index
    @spacecrafts = Spacecraft.all
  end
end
