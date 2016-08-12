class Sandwich < ApplicationRecord
	has_many :sandwich_ingredients
	has_many :ingredients, through: :sandwich_ingredients

	def total_calories
		n = 0

		ingredients.all.each do | single_ingredient |
			 n += single_ingredient.calories
		end
		return n
	end

end
