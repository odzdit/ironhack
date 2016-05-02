class ShoppingCart
	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
	end

	def checkout
		total = @items.reduce(0) do | total, single_item |
			total + single_item.price
		end
		if @items.count >= 5
			total =  total * 0.9
		end
		puts "Your price for today was: #{total}, have a nice day"
	end
end