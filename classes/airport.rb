class Airport	

	attr_reader :name, :flights

	def initialize(name)

		@name = name
		@flights = []	

	end


	def add_flight(capacity, desitnation, flight_code, duration)

		@flights.push(Flight.new(capacity, desitnation, flight_code, duration))

	end

	
end