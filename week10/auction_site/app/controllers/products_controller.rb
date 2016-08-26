class ProductsController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end

	def index
		@user = User.find(params[:user_id])
  		@products = @user.products
  	end

	def all
		@products = Product.all
	end

	def create
		@user = User.find(params[:user_id])
		@product = @user.products.new(product_params)
		if @product.save
			redirect_to user_products_path(@user)
		else
			render "new"
		end
	end

	def show
		@user = User.find(params[:user_id])
		@product = @user.products.find_by_id(params[:id])
		@bid = @product.bids.new
		@bids = @product.bids
	end



private
		def product_params
			params.require(:product).permit(:title, :description, :deadline)
		end

end
