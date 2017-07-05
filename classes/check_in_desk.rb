require_relative "airport.rb"
require_relative "flight.rb"
require_relative "passenger.rb"

class Check_in_desk



	def initialize(airport)

		@airport = airport

	end


	def add_flight_to_airport

		puts "please enter the capacity number \n "
		capacity = gets.chomp.to_i

		puts "please enter the destination \n "
		destination = gets.chomp

		puts "please enter the flight code number \n "
		flight_code = gets.chomp

		puts "please enter the duration number \n "
		duration = gets.chomp.to_i

		@airport.add_flight(capacity, destination, flight_code, duration)

		puts "Flight #{destination}: #{flight_code} has been added \n "

	end

	def select_flight

		puts "please select a flight \n "

		@airport.flights.each_index do |n|

		 	puts "#{n}. #{@airport.flights[n].desitnation}: #{@airport.flights[n].flight_code} \n "
	 	end

	 	flight_index = gets.chomp

	 	@airport.flights[flight_index]

	end





	def add_passenger_to_flight

		flight = select_flight

		puts "Please enter the name of the passenger \r\n"
		passenger_name = gets.chomp

		puts "Please enter the age of the passenger \r\n"
		passenger_age = gets.chomp

		puts "Please enter the passport number of the passenger \r\n"
		passenger_passport_number = gets.chomp

		flight.add_passenger(passenger_name, passenger_age, passenger_passport_number)

		puts "#{passenger_name} has been booked onto flight #{flight.desitnation}: #{flight.flight_code} \r\n"

	end





end

democratic_republic_of_fane_airport = Airport.new("Democratic Republic of Fane Airport")

check_in_desk = Check_in_desk.new(democratic_republic_of_fane_airport)

check_in_desk.add_flight_to_airport

check_in_desk.add_passenger_to_flight


