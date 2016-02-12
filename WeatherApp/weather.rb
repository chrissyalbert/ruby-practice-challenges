require 'weatherboy'

def weather_now(location)
    weatherboy = Weatherboy.new(location)
    w = weatherboy.current.weather
    t = weatherboy.current.temp_f.to_s
    puts "The current weather conditions for your area is " + w.downcase + " and the temperature is " + t + " degrees Farenheit."
end

puts "Would you like to know the weather for your area? Please enter your 5 digit zipcode."
location = gets.chomp

def weather_next(location)
    forecast = Weatherboy.new(location).forecasts
    
    forecast.each do |forecast|
        day = forecast.title
        cond = forecast.conditions
        high = forecast.high_f.to_s
        low = forecast.low_f.to_s
        puts "On #{day} the weather will be #{cond.downcase} with a high temperature of #{high} and a low of #{low}."
    end
end

weather_now(location)
weather_next(location)