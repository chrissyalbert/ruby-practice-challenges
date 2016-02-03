class Blog

	@@total_num_posts = 0
	@@total_whole_posts_array = []

	def self.current_count(post)
   		@@total_whole_posts_array << post
    	@@total_num_posts += 1
  	end	

	def self.publish
    	@@total_whole_posts_array.each do |post|
      puts "Title:\n #{@title}"
      puts "Body:\n #{@content}"
      puts "Publish Date:\n #{@publish_date}"
    end	
end

class Blogpost < Blog

	def initialize()# I got the idea for this from 'Classes, Objects, Variables'
		@title	= title # from http://phrogz.net/programmingruby/frameset.html website
		@author	= author
		@publish_date = publish_date
		@content = content
	end
	
	def self.create
   		post = self.new
   		puts "What is the title of your blog post?"
		@title = gets.chomp
		puts "What is your name?"
		@author = gets.chomp
		time = Time
		@publish_date = time.now.month + time.now.day + time.now.year
		puts "Please enter your blog post content here."
		@content = gets
    	post.save
		puts "Do you want to create another blog post? Y/N?"
		create if gets.chomp.downcase == 'y'	
	end

	def save
		Blogpost.current_count(self)
	end

end

Blogpost.create
Blogpost.publish
end
