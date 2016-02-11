require 'weatherboy'

def weather_now(location)
    weatherboy = Weatherboy.new(location)
    w = weatherboy.current.weather
    t = weatherboy.current.temp_f.to_s
    puts "The current weather conditions for your area is " + w.downcase + " and the temperature is " + t + " degrees Farenheit."
end

def get_forecast(location)
    future = Weatherboy.new(location)
    
end

puts "Would you like to know the weather for your area? Please enter your 5 digit zipcode."
user_location = gets.chomp

weather_now(user_location)
get_forecast(user_location)


