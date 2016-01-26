class Blog

	@@total_num_posts = 0
	@@total_whole_posts_array = []
	@@total_whole_posts_hash = {}
	
	def initialize
	@@total_num_posts += 1
	end
	
	def self.current_count	
	return @@total_posts
	end
	
end

class Blogpost < Blog

	def initialize(title, author, publish_date, content)# I got the idea for this from 'Classes, Objects, Variables'
		@title	= title # from http://phrogz.net/programmingruby/frameset.html website
		@author	= author
		@publish_date = publish_date
		@content = content
	end

	puts "Do you want to create another blog post? Y/N?"
	answer = gets.chomp.downcase
	
	if (answer.downcase == "y")
		
		puts "What is the title of your blog post?"
		@title = gets
		puts "What is your name?"
		@author = gets
		time = Time
		@publish_date = time.now.month + time.now.day + time.now.year
		puts "Please enter your blog post content here."
		@content = gets
	end

end
