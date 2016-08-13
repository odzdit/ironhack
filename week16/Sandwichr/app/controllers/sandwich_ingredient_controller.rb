class SandwichIngredientController < ApplicationController


	def add
		sandwich = Sandwich.find_by(id: params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		sandwich.ingredients.push(ingredient)
		sandwich_ingredients = sandwich.ingredients

		new_calories = sandwich.total_calores += ingredient.calories
		sandwich.update(total_calores: new_calories)

		sandwich_all = {
			"sandwich" => sandwich,
			"ingredients" => sandwich_ingredients
		}

		render json: sandwich_all
	end

end
