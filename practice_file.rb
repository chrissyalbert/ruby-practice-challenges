puts "This is a test file for a new branch."

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end


def determine_name
	puts "Hello! Please tell me your name."
	name = gets.capitalize
	end
	
def greeting
	name = determine_name
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	puts "Good #{time}, #{name}!"
end

greeting 