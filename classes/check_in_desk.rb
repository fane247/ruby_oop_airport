require_relative "airport.rb"
require_relative "flight.rb"
require_relative "passenger.rb"

class check_in_desk



	def initialize(airport)

		@airport = airport

	end



	def add_flight_to_airport()
		puts "please enter the capacity number"
		capacity = gets.chomp.to_i

		puts "please enter the destination"
		destination = gets.chomp

		puts "please enter the flight code number"
		flight_code = gets.chomp.to_i

		
