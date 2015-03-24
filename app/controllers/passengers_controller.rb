class PassengersController < ApplicationController

  def index
    @passengers = Flight.find(params[:flight_id]).passengers

  end

  def show
    @passenger = Passenger.find(params[:id])
  end

  def new
    @passenger = Passenger.new
    @flight = Flight.find(params[:flight_id])
  end

  def create
    @passenger = Passenger.new(passenger_params)
    @passenger.flight_id = Flight.find(params[:flight_id]).id
    if @passenger.save
      redirect_to flight_passengers_path(params[:flight_id])
    else
      render 'new'
    end
  end

  def edit
    @passenger = Passenger.find(params[:id])
    @flight = Flight.find(params[:flight_id])
  end

  def update
    @passenger = Passenger.find(params[:id])
    if @passenger.update(passenger_params)
      redirect_to flight_passenger_path(params[:flight_id], @passenger.id)
    else
      render 'edit'
    end
  end

  def destroy
    @passenger = Passenger.find(params[:id])
    @passenger.destroy
    redirect_to flight_passengers_path(params[:flight_id])
  end


  private
    def passenger_params
      params.require(:passenger).permit(:name, :passport)
    end

end
