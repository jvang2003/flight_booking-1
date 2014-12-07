class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: 'Airport', foreign_key: 'start_airport_id'
  belongs_to :to_airport, class_name: 'Airport', foreign_key: 'finish_airport_id'
end
