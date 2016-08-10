class SandwichesController < ApplicationController

	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end


	def show
		sandwich = Sandwich.find_by(id: params[:id])
		if sandwich
			render json: sandwich
		else
			render json: { error: "Couldn't find that Sandwich, homeslice"},
					status: 404
			end
	end

	def update
	sandwich = Sandwich.find_by(id: params[:id])
	if sandwich
			sandwich.update(sandwich_params)
			render json: sandwich
		else
		render json: { error: "Sandwich not found"},
			status: 404
		end

	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		if sandwich
			sandwich.destroy
			head :deleted, status: 500
			return
		else
			render json: { error: "Sandwich not found"},
			status: 404
		end

	end



	private

	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
	end

end
