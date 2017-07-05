class Flight

	attr_reader :capacity, :desitnation, :flight_code, :duration, :passengers

	def initialize(capacity, desitnation, flight_code, duration)

		@capacity = capacity 
		@desitnation = desitnation
		@flight_code = flight_code
		@duration = duration
		@passengers = []

	end


	def to_s 

		"Flight #{flight_code} to #{desitnation} with a capacity of #{capacity} and takes #{duration} hours"

	end

	def add_passenger(name, age, passport_number)

		passenger = Passenger.new(name, age, passport_number)
		@passengers.push(passenger)

	end



	
end