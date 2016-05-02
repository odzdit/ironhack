class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Dieter's place", "Cancun", 3, 40),
  Home.new("Aldo's place", "Cancun", 5, 42),
  Home.new("Manuel's place", "Morelia", 3, 30),
  Home.new("Gaby's place", "Panama", 3, 45),
  Home.new("Ryans's place", "Cape Town", 5, 47),
  Home.new("Melanie's place", "Helsinki", 3, 41),
  Home.new("Jean's place", "Havana", 6, 30),
  Home.new("Rodolfo's place", "Merida", 1, 35),
  Home.new("Nuria's place", "Birmingham", 2, 40),
  Home.new("Karepy's place", "Mexico City", 4, 60)
]

# Iteration 1
# homes.each do |i|
# 	puts "#{i.name} is in #{i.city} starting at #{i.price}"
# end

# Iteration 2
# puts "Would you like to sort by Price or by Capacity?"
# define_sort = gets.chomp

# if define_sort == "Price"
# 	sorted_homes = homes.sort_by {|i| i.price}.reverse
# 		sorted_homes.each do |i|
# 		puts "#{i.name} is in #{i.city} starting at #{i.price}"
# 	end
# elsif define_sort == "Capacity"
# 		sorted_homes = homes.sort_by {|i| i.capacity}
# 		sorted_homes.each do |i|
# 		puts "#{i.name} is in #{i.city} starting at #{i.capacity}"
# 	end
# end

# Iteration 3
# puts "Please type a city you would like to see available options for"
# define_city = gets.chomp

# new_city_list = homes.select do |i|
#   i.city == define_city
# end

# new_city_list.each do |i|
# 	puts "#{i.name} is in #{i.city} starting at #{i.price}"
# end

# Iteration 4 
# prices = homes.map do | i |
# 	i.price
# end

# sum_prices = prices.reduce(0.0) do |sum , num|
# 	sum + num
# end
# puts sum_prices / prices.count

#Iteration 5

# puts "Please, enter a price so we can search a Property matching your price"
# property_price = gets.chomp

# new_property = homes.find do |hm|
#   hm.price == property_price.to_i
# end
# puts "The first home that costs $41 is:"
# puts new_property.name



