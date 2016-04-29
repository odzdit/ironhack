class ShakeShop
	def initialize
		@shakes = []
	end

	def add_shake(milkshake)
		@shakes.push(milkshake)
	end

	def checkout
		total = 0
		@shakes.each do | single_shake |
			total += single_shake.total_price
		end
		puts "Your price for today was: #{total}, have a nice day"
	end
end



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

#My Shake
my_shake = Milkshake.new
my_shake.add_ingredient(banana)
my_shake.add_ingredient(berries)

#Gaby's Shake
gabys_shake = MilkShake.new
my_shake.add_ingredient(caramel)
my_shake.add_ingredient(chocolate_chips)

#My new shop
dieters_shop = ShakeShop.new
dieters_shop.add_shake(my_shake)
dieters_shop.add_shake(gabys_shake)
dieters_shop.checkout



