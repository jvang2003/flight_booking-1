require 'rails_helper'

RSpec.describe Airport, :type => :model do

 context "valid" do
	  it "changes the number of airports" do
	  	airport = Airport.new(code: 'FSO')
	  	expect {airport.save}.to change {Airport.count}.by(1)
	  end

	  it {should ensure_length_of(:code).is_at_most(3)}
	  it {should validate_presence_of(:code)}
	  it {should validate_uniqueness_of(:code)}
 end

 context "should have" do 
	  it {should have_many(:departing_flights)}
	  it {should have_many(:arriving_flights)}
 end

end

