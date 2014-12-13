class BookingsController < ApplicationController
  def new
  	@flight_id = params[:flight_id]
  	@tickets = params[:tickets]
  	@flight = Flight.find(@flight_id)

  	@booking = Booking.new
  	@tickets.to_i.times {@booking.passengers.build}

  end

  def create
  	@booking = Booking.new(booking_params)
  	if @booking.save
  		redirect_to @booking
  	else
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
