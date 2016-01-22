class Plant

	def set_name=(plant_name)
		@name = plant_name
	end	
	
	def get_name
		return @name
	end
	
	def set_light_pref=(light_pref)
		@light_pref = light_pref
	end	
	
	def get_light_pref
		return @light_pref
	end		
		
	def set_plant_zone=(plant_zone)
		@plant_zone = plant_zone
	end	
	
	def get_plant_zone
		return @plant_zone
	end
	
	def set_water_pref=(water_pref)
		@water_pref = water_pref
	end	
	
	def get_water_pref
		return @water_pref
	end	
	
end

class Annual < Plant

	def set_transplant_time=(transplant_time)
		@transplant_time = transplant_time
	end	
	
	def get_transplant_time
		return @transplant_time
	end		

end

class Perennial < Plant

	def set_bloom_time=(bloom_time)
		@bloom_time = bloom_time
	end	
	
	def get_bloom_time
		return @bloom_time
	end	
	
end	

class Indoor < Plant

	def set_plant_outside=(plant_outside)
		@plant_outside = plant_outside
	end	
	
	def get_plant_outside
		return @plant_outside
	end		

end

my_plant = Perennial.new

my_plant.set_name = "Hosta"
plant_name = my_plant.get_name

my_plant.set_plant_zone = "temperate"
plant_zone = my_plant.get_plant_zone

my_plant.set_water_pref = "wet"
plant_water = my_plant.get_water_pref

my_plant.set_light_pref = "shade"
plant_light = my_plant.get_light_pref

my_plant.set_bloom_time = "Spring"
plant_bloom = my_plant.get_bloom_time

puts "The #{plant_name} does best in #{plant_zone} #{plant_water} #{plant_light} conditions and blooms in #{plant_bloom}."

puts my_plant.inspect



	

	
	
	
	

