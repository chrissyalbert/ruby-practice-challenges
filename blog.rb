class Blog

	@@total_num_posts = 0
	@@total_whole_posts_array = []

  def self.all
    @@total_whole_posts_array
  end

	def self.current_count(post)
   		@@total_whole_posts_array << post
    	@@total_num_posts += 1
  	end	

	def self.publish
    	@@total_whole_posts_array.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.publish_date}"
    end	
end

class Blogpost < Blog

	def self.create
   		post = self.new
   		puts "What is the title of your blog post?"
		post.title = gets.chomp
		puts "What is your name?"
		post.author = gets.chomp
		post.publish_date = Time.now
		puts "Please enter your blog post content here."
		post.content = gets
    	post.save
		puts "Do you want to create another blog post? Y/N?"
		create if gets.chomp.downcase == 'y'	
	end

	attr_accessor :title, :author, :publish_date, :content
	
	def save
		Blogpost.current_count(self)
	end

end

Blogpost.create
total_whole_posts_array = Blogpost.all
puts total_whole_posts_array.inspect
Blogpost.publish
end
