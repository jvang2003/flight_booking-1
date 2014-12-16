require 'rails_helper'

RSpec.describe Passenger, :type => :model do
  
    context "valid" do 

	  it "changes the number of passengers" do
	  	passenger = Passenger.new(name: 'Test', email: 'test@mail.com')
	  	expect {passenger.save}.to change {Passenger.count}.by(1) 
	  end

	  it {should validate_presence_of(:name)}
	  it {should validate_presence_of(:email)}
	  it {should_not allow_value('test.com').for(:email)}
	  it {should allow_value('test@mail.com').for(:email)}
    end
    
    context "should have many" do
	  it {should have_many(:passenger_bookings)}
	  it {should have_many(:bookings)}
	  it {should have_many(:flights)}
	end
end
