require_relative "airport.rb"
require_relative "flight.rb"
require_relative "passenger.rb"

class Check_in_desk



	def initialize(airport)

		@airport = airport
		main_menu

	end


	def add_flight_to_airport

		puts "\r\nplease enter the capacity number"
		capacity = gets.chomp.to_i

		puts "\r\nplease enter the destination"
		destination = gets.chomp

		puts "\r\nplease enter the flight code number"
		flight_code = gets.chomp

		puts "\r\nplease enter the duration number"
		duration = gets.chomp.to_i

		@airport.add_flight(capacity, destination, flight_code, duration)

		puts "\r\nFlight #{destination}: #{flight_code} has been added"

	end

	def select_flight

		puts "\r\n please select a flight"

		@airport.flights.each_index do |n|

		 	puts "\r\n #{n}. #{@airport.flights[n].desitnation}: #{@airport.flights[n].flight_code}"
	 	end

	 	flight_index = gets.chomp.to_i

	 	@airport.flights[flight_index]

	end





	def add_passenger_to_flight(flight)

		puts "\r\n Please enter the first name of the passenger"
		passenger_first_name = gets.chomp

		puts "\r\n Please enter the last name of the passenger"
		passenger_first_name = gets.chomp

		puts "\r\n Please enter the age of the passenger"
		passenger_age = gets.chomp

		puts "\r\n Please enter the passport number of the passenger"
		passenger_passport_number = gets.chomp

		flight.add_passenger(passenger_name, passenger_age, passenger_passport_number)

		puts "\r\n #{passenger_first_name} #{passenger_last_name} has been booked onto flight #{flight.desitnation}: #{flight.flight_code}"

	end

	def list_all_passengers_on_flight(flight)

		flight.passengers.each do |passenger|

			puts "\r\n #{passenger.first_name} "

		end

	end

	def get_passenger_from_flight(flight)

		puts "please enter first name"
		first_name = gets.chomp

		puts "please enter last name"
		last_name = gets.chomp

		passenger = flight.passengers.find do |passenger|

			passenger.first_name == first_name
			passenger.last_name == last_name

		end

		puts passenger

	end

	#can change both flight and passenger

	def change_details(object)

		puts "\r\n what detail would you like to change? "

		object.instance_variables.each_with_index do |instance_variable, index|

			clean_name = get_clean_instance_variable_name(instance_variable)

			puts "\r\n#{index}. #{clean_name}"

		end

		index_response = gets.chomp.to_i

		instance_variable_name = object.instance_variables[index_response]

		puts "\r\n what would you like to change it to?"

		changed_detail = gets.chomp

		object.instance_variable_set(instance_variable_name, changed_detail)

		puts object
		puts "\r\nhas been edited!"

	end

	def get_clean_instance_variable_name(instance_variable)

		instance_variable.to_s.tr('@', '').tr('_', ' ')

	end

	def delete_flight(flight)

		if !flight == nil

			@airport.flights.delete_if { |flights|  @airport.flights.flight_code = flight.flight_code}

			puts "#{flight_number} has been delted!"

		else

			puts "invalid flight chosen"

		end

	end

	def main_menu

		exit = false

		while (!exit)

			puts "Welcome to the Democratic Republic of Fane Airport"
			puts "\r\nMain Menu "
			puts "\r\nPlease select one of the following options "

			puts "1. Add flight"
			puts "2. List all Flights"
			puts "3. select a flight"
			puts "4. exit"

			answer = gets.chomp.to_i

			case answer
			when 1 then add_flight_to_airport
			when 2 then puts @airport.flights
			when 3 then flights_menu
			when 4 then exit = true
			else puts "that is not a valid option"
			end

		end

	end

	def flights_menu

		back = false

		while (!back)

			puts "\r\nflights menu"

			puts "\r\nPlease select one of the following options"

			puts "1. add a passenger to a flight"
			puts "2. list all passengers on a flight"
			puts "3. change details of a flight"
			puts "4. delete a flight"
			puts "5. change details of a passenger"
			puts "6. back"

			answer = gets.chomp.to_i

			flight = select_flight

			case answer
			when 1 then add_passenger_to_flight(flight)
			when 2 then puts flight.passengers
			when 3 then change_details(flight)
			when 4 then delete_flight(flight)
			when 5 then change_details(get_passenger_from_flight)
			when 6 then back = true
			else puts "that is not a valid option"
			end

		end

	end



end

democratic_republic_of_fane_airport = Airport.new("the Democratic Republic of Fane Airport")

check_in_desk = Check_in_desk.new(democratic_republic_of_fane_airport)

# check_in_desk.add_flight_to_airport

# check_in_desk.add_passenger_to_flight

# flight = Flight.new(200,"rome",334,1)

# flight.add_passenger("fane", "fonseka", 26, "3344kkjj")

# passenger_fane = Passenger.new("fane", "fonseka", 26, "3344kkjj")

# check_in_desk.get_passenger_from_flight(flight);

# check_in_desk.change_details(flight)

# check_in_desk.change_flight_details(flight);

# check_in_desk.delete_flight

# puts check_in_desk.airport.flights

# check_in_desk.select_flight

check_in_desk.main_menu


