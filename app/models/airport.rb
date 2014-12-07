class Airport < ActiveRecord::Base
	has_many :departing_flights, class_name: 'Flight', foreign_key: 'start_airport_id', dependent: :destroy
	has_many :arriving_flights, class_name: 'Flight', foreign_key: 'finish_airport_id', dependent: :destroy

	validates :code, presence: true, length: {minimum: 3}
end
