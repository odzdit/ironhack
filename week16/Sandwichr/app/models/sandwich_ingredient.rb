class SandwichIngredient < ApplicationRecord
	belongs_to :sandwich
	belongs_to :ingredient

	def add_calories(sandwich, ingredient)
		sandwich.total_calores += ingredient.calories
	end
end
