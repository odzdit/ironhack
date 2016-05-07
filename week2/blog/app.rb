require_relative('lib/post')
require_relative('lib/blog')


post1 = Post.new("This is my first post", Time.now, "Some cool content")
post2 = Post.new("This is my second post", Time.now, "Some extra mega cool content")
post3 = Post.new("This is my third post", Time.now, "I decided to write someting different today so here it is")
post4 = Post.new("This is my fourth post", Time.now, "Today i dont feel like writing, but here I am")
post5 = Post.new("This is my fifth post", Time.now, "Hello you're very weird for reading my blog")
post6 = Post.new("This is my sixth post", Time.now, "Hello you're very weird for reading my blog")
post7 = Post.new("This is my seventh post", Time.now, "Hello you're very weird for reading my blog")
post8 = Post.new("This is my eight post", Time.now, "Hello you're very weird for reading my blog")

# post.display_post



blog = Blog.new
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
blog.add_post(post4)
blog.add_post(post5)
blog.add_post(post6)
blog.add_post(post7)
blog.add_post(post8)
blog.publish_front_page

puts "type NEXT or PREVIOUS to move through the blog pages"
page = gets.chomp
if page == "NEXT"
	blog.publish_next_page
elsif page == "PREVIOUS"
	blog.publish_previous_page
else
	puts "LEARN TO TYPE"
end

