class TripsController < ApplicationController

  # homepage
  def index
    @trips = Trip.all
  end

  # city search
  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to @trip
    else
      flash[:alert] = "Whoops! You forgot the city!"
      render action: 'new'
    end
  end

  # city search view
  def show
    @trip = Trip.find(params[:id])
    @city = @trip.get_city
  end

   # deal view
  def deals
    @price = Trip.deal_now
  end

private

  def trip_params
      params.require(:trip).permit(:city)
  end

end
