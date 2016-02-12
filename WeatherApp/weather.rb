require 'weatherboy'

def weather_now(location)
    weatherboy = Weatherboy.new(location)
    w = weatherboy.current.weather
    t = weatherboy.current.temp_f.to_s
    puts "The current weather conditions for your area is " + w.downcase + " and the temperature is " + t + " degrees Farenheit."
    puts " "
end

def weather_next(location)
    forecast = Weatherboy.new(location).forecasts
    require 'date'
    today = Date.today
    date = [today, today +1, today +2, today +3, today +4]
    date.zip(forecast).each do |date, forecast|
        puts (date.strftime('%A') + ", " + date.strftime('%b') + " " + date.strftime('%d') + ", " + date.strftime('%Y')) 
        puts "The weather conditions will be " + forecast.conditions.downcase + ", and the high will be " + forecast.high_f.to_s + " with a low of " + forecast.low_f.to_s + "."
        puts " "
    end
end

puts "Would you like to know the weather for your area? Please enter your 5 digit zipcode."
location = gets.chomp

weather_now(location)
weather_next(location)