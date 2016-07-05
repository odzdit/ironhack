class ProductsController < ApplicationController

	def new
		@product = Product.new
	end

	def index
		@products = Product.last_created_products(10)
	end


end
