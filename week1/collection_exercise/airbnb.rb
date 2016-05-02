class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end



#We are just login the names of the places in each city and price by night
# homes.each do |i|
#   puts "#{i.name} in #{i.city}"
#   puts "Price: #{i.price} a night"
# end

#In here we are returning a new array "prices" that only has the price
# prices = homes.map do |hm|
#   hm.price
# end

#in here we are using the array prices to do an each and get a total
# prices.each do |i|
#   sum = 0
#   sum = sum += i
# end

#In here we are using reduce. to get the total using sum and defining it as 0.0
# average_price = prices.reduce(0.0) do |sum , num|
#   sum + num
# end

#This was the exercise, we're doing the averege price of all the prices
# puts average_price / prices.count

#In homes with index, which is like .each but we are adding a parameter "index"
# for this exercise we're outputting the name of the index + 1 accordingly
# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end

#Find is used to retrieve specific items that meet a condition within the array
# home_41_dollars = homes.find do |hm|
#   hm.price == 41
# end
# puts "The first home that costs $41 is:"
# puts home_41_dollars.name

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

#Select is a filter for example "Homes in San Juan" if wanted to puts this we would need to do each
# san_juan_homes = homes.select do |hm|
#   hm.city == "San Juan"
# end
# p san_juan_homes

#Sort just like "select" does not give you a putseable array, for that you can use each
sorted = homes.sort do |home1, home2|
  # Compare the two homes by their capacity
  home1.capacity <=> home2.capacity
end
puts sorted
