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
		@above_five_posts = Post.where("votes > ?", 5) 
		@by_date_posts = Post.order(created_at: :asc) 
		@by_vote_posts = Post.order(votes: :desc) 

		if params[:command] == "five"
			@posts = @above_five_posts
		elsif params[:command] == "creation"
			@posts = @by_vote_posts
		else 
			@posts = @by_date_posts 
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
