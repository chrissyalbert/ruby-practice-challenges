require 'weatherboy'

def get_weather(location)
    weatherboy = Weatherboy.new(location)
    w = weatherboy.current.weather
    puts "The current weather conditions for your area is " + w + "."
end

puts "Would you like to know the weather for your area? Please enter your 5 digit zipcode."
user_location = gets.chomp

get_weather(user_location)



