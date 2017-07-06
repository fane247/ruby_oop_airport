class Passenger

	attr_accessor :first_name, :last_name, :age, :passport_number

	def initialize(first_name, last_name, age, passport_number)

		@first_name = first_name
		@last_name = last_name
		@age = age
		@passport_number = passport_number

	end

	def to_s
		"\r\nname: #{@first_name}, age: #{@age}, passport number: #{@passport_number}"
	end	
end