class Passenger

	attr_reader :name, :age, :passport_number

	def initialize(name, age, passport_number)

		@name = name
		@age = age
		@passport_number = passport_number

	end

	def to_s
		"name: #{@name}, age: #{@age}, passport number: #{@passport_number}"
	end	
end