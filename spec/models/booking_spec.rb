require 'rails_helper'

RSpec.describe Booking, :type => :model do
  context "valid" do
  	it {should validate_presence_of(:flight_id)}
  end

  context "should have many, belong to" do
  	it {should have_many(:passenger_bookings)}
  	it {should have_many(:passengers)}
  	it {should belong_to(:flight)}
  end

  context "nested attributes" do 
  	it {should accept_nested_attributes_for(:passengers)}
  end

  context "db" do 
  	it {should have_db_index(:flight_id)}
  end
end
