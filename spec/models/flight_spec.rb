require 'rails_helper'

RSpec.describe Flight, :type => :model do
  context "should belong to" do 
  	it {should belong_to(:from_airport)}
  	it {should belong_to(:to_airport)}
  end

  context "db" do 
  	it {should have_db_index(:finish_airport_id)}
  	it {should have_db_index(:start_airport_id)}
  end
end
