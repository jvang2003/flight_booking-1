# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Airport.delete_all
Flight.delete_all


Airport.create(id: 1, code: 'SFO')
Airport.create(id: 2, code: 'LED')
Airport.create(id: 3, code: 'ORD')
Airport.create(id: 4, code: 'PAN')
Airport.create(id: 5, code: 'MDW')

Flight.create(id: 1, date: DateTime.now, flight_duration: 1, start_airport_id: 1, finish_airport_id: 2)
Flight.create(id: 2, date: DateTime.tomorrow, flight_duration: 2, start_airport_id: 2, finish_airport_id: 3)
Flight.create(id: 3, date: DateTime.now, flight_duration: 3, start_airport_id: 3, finish_airport_id: 4)
Flight.create(id: 4,date: DateTime.now, flight_duration: 1, start_airport_id: 4, finish_airport_id: 5)
Flight.create(id: 5, date: DateTime.tomorrow, flight_duration: 4, start_airport_id: 2, finish_airport_id: 3)
Flight.create(id: 6, date: DateTime.tomorrow, flight_duration: 5, start_airport_id: 2, finish_airport_id: 3)




