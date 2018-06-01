class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def show
    @trails = Trail.all
    @trip = Trip.find(params[:id])
  end

end
