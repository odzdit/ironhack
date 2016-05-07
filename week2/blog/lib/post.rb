
# Attributes(Title, Date, Text)
	# Title
	# Date
	# Text

# Actions (Methods)
	# Print single post

class Post
	def initialize(title, time, text)
		@title = title
		@time = time
		@text = text
	end

	def display_post
		puts "#{@title} posted at #{@time}" 
		puts "**************"
		puts "#{@text}"
		puts "----------------------"
	end
end

class SponsoredPost < Post
	def initialize(title, time, text)
		title = "******** #{title} *******"
		super(title, time, text)

		# def display_post
		# 	puts "******** #{@title} ********"
		# 	puts "**************"
		# 	puts "#{@text}"
		# 	puts "----------------------"
		# end
	end
end