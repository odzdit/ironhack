class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []
	end
	def add_ingredient(my_ingredient)
		@ingredients.push(my_ingredient) #we are pushing  
	end

	def  total_price #this is a variable you're defining within the Milkshake
		sum = @base_price
		@ingredients.each do | single_ingredient |
		sum += single_ingredient.price
		end
		sum
	end
end

class Ingredient
	attr_accessor :price

	def initialize(name, price)
		@name  = name
		@price = price
	end
end

#Menu
banana = Ingredient.new("Banana", 2)
berries = Ingredient.new("Berries", 3)
caramel = Ingredient.new("Caramel", 3)
chocolate_chips = Ingredient.new("Chocolate Chips", 3)

my_shake = MilkShake.new
my_shake.add_ingredient(banana)
my_shake.add_ingredient(caramel)
puts my_shake