# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Airports
Airport.create(code: "LAX")
Airport.create(code: "ATL")
Airport.create(code: "SFO")
Airport.create(code: "NYC")
Airport.create(code: "DFW")
Airport.create(code: "DEN")
Airport.create(code: "JFK")

# Flights
Flight.create(origin_id: 1, destination_id: 2, departure: DateTime.now + 1.day, duration: rand(1..9))
Flight.create(origin_id: 1, destination_id: 3, departure: DateTime.now + 1.day, duration: rand(1..9))
Flight.create(origin_id: 1, destination_id: 4, departure: DateTime.now + 1.day, duration: rand(1..9))
Flight.create(origin_id: 1, destination_id: 5, departure: DateTime.now + 1.day, duration: rand(1..9))
Flight.create(origin_id: 1, destination_id: 6, departure: DateTime.now + 1.day, duration: rand(1..9))
Flight.create(origin_id: 1, destination_id: 7, departure: DateTime.now + 1.day, duration: rand(1..9))
