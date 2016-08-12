class PostsController < ApplicationController


	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@labels = Label.where(id: params[:label_ids])
		@post.labels.push(@labels)


		if @post.save
			redirect_to posts_path
		else
			render 'new'
		end
	end

	def index
		@posts = Post.all
		# @labeled_posts = LabelledPost.find_by(params[:id])

		if params[:command] == "five"
			@posts = Post.where("votes > ?", 5) 
		elsif params[:command] == "creation"
			@posts = @by_vote_posts = Post.order(votes: :asc) 
		elsif params[:command] == "vote" 
			@posts = Post.order(created_at: :asc)  	
		elsif params[:command] == "funny" 
			@label = Label.find_by(id: 1)
			@posts = @label.posts 
		elsif params[:command] == "sad" 
			@label = Label.find_by(id: 2)
			@posts = @label.posts 
		elsif params[:command] == "nsfw" 
			@label = Label.find_by(id: 3)
			# console @label
			@posts = @label.posts 
		elsif params[:command] == "histerical" 
			@label = Label.find_by(id: 4)
			@posts = @label.posts
		elsif params[:command] == "trump" 
			@label = Label.find_by(id: 5)
			@posts = @label.posts
		elsif params[:command] == "happy" 
			@label = Label.find_by(id: 6)
			@posts = @label.posts

		end

	end

	def show
		@post = Post.find(params[:id])
	end

	def upvote
		@post = Post.find(params[:id])
		@post.increment!(:votes)
		redirect_to post_path(@post)

	end

	def downvote
		@post = Post.find(params[:id])
		@post.decrement!(:votes)
		redirect_to post_path(@post)
	end



private
def post_params
	params.require(:post).permit(:title, :gif_url, :label_ids [])
	end

def label_params
	params.require(:label).permit(:label_id, :id, :name)
	end


end
