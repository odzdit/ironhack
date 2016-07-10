class UsersController < ApplicationController

	

	def index
		@users = User.last_created_users(10)
	end

	def show
	end

	def create
	end

	def destroy
	end

	def new
	end
	
end
