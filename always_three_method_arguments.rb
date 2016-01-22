def always_three(number)	
	(((((number + 5) * 2) - 4) / 2) - number)
end
puts "Give me a number."
response_number = gets.to_i
puts "The final number is " + always_three(response_number).to_s