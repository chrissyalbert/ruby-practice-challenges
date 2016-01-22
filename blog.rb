class Blog

	@@total_posts = 0
	
	def initialize
	@@total_posts += 1
	end
	
	def self.current_count	
	puts "There are currently #{@@total_posts} posts on this blog."
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
