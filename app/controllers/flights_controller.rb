class FlightsController < ApplicationController
  def index
	@airports = Airport.all.map {|a| [a.code, a.id]}
	@flight_dates = Flight.flight_dates  
	@number_of_tickets = [['1', 1], ['2', 2], ['3', 3], ['4', 4]]

	@search = Flight.search(params)	
  end
end
