class ShoppingCart
	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
	end

	def checkout
		total = 0
		@items.each do | single_item |
			total += single_item.price
		end
		if @items.count >= 5
			total =  total * 0.9
		end
		puts "Your price for today was: #{total}, have a nice day"
	end
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

 def price
 	@price 
 end
end

class HouseWare < Item
  def price
		if @price > 100
		 	@price  * 0.95
		else
			@price
		end
  end
end

class Fruit < Item
  def price
  	today = Time.now
		if today.saturday? || today.sunday = true
			@price = 0.90
		else 
			@price
		end	
	end
end

#My Shake
dieters_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = HouseWare.new("Vaccuum", 200)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

dieters_cart.add_item(oj)
dieters_cart.add_item(oj)
dieters_cart.add_item(oj)
dieters_cart.add_item(oj)
dieters_cart.add_item(oj)
dieters_cart.add_item(oj)
dieters_cart.checkout
