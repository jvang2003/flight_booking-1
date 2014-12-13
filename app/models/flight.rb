class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: 'Airport', foreign_key: 'start_airport_id'
  belongs_to :to_airport, class_name: 'Airport', foreign_key: 'finish_airport_id'

  has_many :bookings

  validates :start_airport_id, presence: true
  validates :finish_airport_id, presence: true


  def self.flight_dates
  	pluck(:date).map {|d| [ d.strftime("%m/%d/%Y"), d.to_date]}.uniq
  end

  def self.search(params)
  	unless params[:date].blank?
  		date = params[:date].to_date
  		self.where(date: date.beginning_of_day..date.end_of_day, 
  			start_airport_id: params[:start_airport], finish_airport_id: 
  			params[:finish_airport]).includes(:from_airport, :to_airport)
  	end
  end

  def format_date
  	date.strftime("%m/%d/%Y")
  end
end
