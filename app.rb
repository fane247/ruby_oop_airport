require_relative "classes/airport.rb"
require_relative "classes/flight.rb"
require_relative "classes/passenger.rb"

#create flight - add to airport

#add passengers to flight

# list passengers on a flight

#list all the flights available from this airport

republic_of_fane_airport = Airport.new("Republic of Fane Airport")

puts republic_of_fane_airport.name	

republic_of_fane_airport.add_flight(150, "Prague", 154, 1.5)
# republic_of_fane_airport.add_flight(132, "somewhere else", 154, 1.5)

republic_of_fane_airport.flights[0].add_passenger("fane", 26, 12344325)

puts republic_of_fane_airport.flights[0].passengers[0]
