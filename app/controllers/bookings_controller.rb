class BookingsController < ApplicationController
  def new
  	
  	@flight = Flight.find(params[:flight_id])

  	@booking = Booking.new
  	params[:tickets].to_i.times {@booking.passengers.build}

  end

  def create
  	@booking = Booking.new(booking_params)
  	if @booking.save
  		redirect_to @booking
  	else
  		flash.now[:danger] = "Make sure the passenger information is correct."
  		@flight = Flight.find(params[:flight_id])
  		render 'new'
  	end
  end

  def show
  	@booking = Booking.find(params[:id])
  end

  private

  def booking_params
  	params.require(:booking).permit(:flight_id, 
  		passengers_attributes: [:id, :name, :email])
  end
end
