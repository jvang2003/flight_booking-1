require 'rails_helper'

RSpec.describe FlightsController, :type => :controller do
	context "routes" do
		it {should route(:get, '/').to(action: :index)}
	end
end

describe "submit form", :type => :feature do
	before :each do
		Airport.create(id: 1, code: 'SFO')
		Airport.create(id: 2, code: 'LED')
		Flight.create(id: 1, date: '2014-12-13', flight_duration: 123,
			start_airport_id: 1, finish_airport_id: 2)
	end

	it "searches flight" do
		visit root_path
		select('SFO', :from => 'start_airport')
		select('LED', :from => 'finish_airport')
		select('1', :from => 'tickets')
		page.click_button 'Search'
		expect(page).to have_content 'Duration'
	end

	it "selects flight" do 
		visit root_path
		select('SFO', :from => 'start_airport')
		select('LED', :from => 'finish_airport')
		select('1', :from => 'tickets')
		click_button 'Search'
		choose('flight_id_1')
		click_button 'Select Flight'
		expect(page).to have_content 'Bookings page'
	end

	it "submits passenger" do
		visit root_path
		select('SFO', :from => 'start_airport')
		select('LED', :from => 'finish_airport')
		select('1', :from => 'tickets')
		click_button 'Search'
		choose('flight_id_1')
		click_button 'Select Flight'
		fill_in('Name', :with => 'Name')
		fill_in('Email', :with => 'email@name.com')
		click_button 'Submit'
		expect(page).to have_content 'Order confirmation'
	end
end
