class AirlinesController < ApplicationController
  def index
  	@airlines = Airline.all
  end

  def new
  	@airline = Airline.new
  end

  def create
  	@airline = Airline.new(airline_params)
  	if @airline.save
  		redirect_to airlines_path
  	else
  		render 'new'
  	end
  end

  def edit
  	@airline = Airline.find(params[:id])
  end

  def update
  	@airline = Airline.find(params[:id])
  	if @airline.update(airline_params)
  		redirect_to airlines_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@airline = Airline.find(params[:id])
  	@airline.destroy
  	redirect_to airlines_path
  end

  private
  	def airline_params
  		params.require(:airline).permit(:name)
 
  	end


end
