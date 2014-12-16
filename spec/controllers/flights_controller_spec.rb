require 'rails_helper'

RSpec.describe FlightsController, :type => :controller do
	context "routes" do
		it {should route(:get, '/').to(action: :index)}
	end
end

