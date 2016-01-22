class Plant

	attr_accessor :name, :light_pref, :plant_zone, :water_pref
	
end

my_plant = Plant.new

my_plant.name = "Hosta"
plant_name = my_plant.name

my_plant.light_pref = "shade"
plant_light = my_plant.light_pref

my_plant.plant_zone = "temperate"
plant_zone = my_plant.plant_zone

my_plant.water_pref = "wet"
plant_water = my_plant.water_pref

puts "The #{plant_name} does best in #{plant_zone} #{plant_water} #{plant_light} conditions."

