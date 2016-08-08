class PostsController < ApplicationController


	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to posts_path
		else
			render 'new'
		end
	end

	def index
		@posts = Post.all

		if params[:command] == "five"
			@posts = Post.where("votes > ?", 5) 
		elsif params[:command] == "creation"
			@posts = @by_vote_posts = Post.order(votes: :asc) 
		else 
			@posts = Post.order(created_at: :asc)  
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
	params.require(:post).permit(:title, :gif_url)
	end


end
