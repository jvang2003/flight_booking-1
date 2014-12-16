require 'rails_helper'

RSpec.describe BookingsController, :type => :controller do
	context "routes" do 
		it {should route(:get, '/bookings/new').to(action: :new)}
		it {should route(:get, '/bookings/1').to(action: :show, id: 1)}
		it {should route(:post, '/bookings').to(action: :create)}
	end
end


