class PostsController < ApplicationController
	def index
		# @posts = Post.all
		@posts = Post.all
		# @sorted_posts = @posts('created_at DESC')
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			render 'index'
		else
			render "new"
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def down
		@post = Post.find(params[:id])
		@post.votes -= 1
		@post.save
		redirect_to post_path
	end

	def up
		@post = Post.find(params[:id])
		@post.votes += 1
		@post.save
	end


private

	def post_params
		params.require(:post).permit(:title, :gif_url, :votes)
	end

end
