
#EACH
# classmates = ["Ryan", "Melanie", "Jeans"]

# classmates.each do | name |
# 	puts "Good morning #{name}"
# end


# MAP
#option 1 this option is better
# cities = ["miami", "madrid", "barcelona"]

# city_capitalize = cities.map do | city |
# 	city.capitalize
# end

# p city_capitalize

# #option2
# cities = ["miami", "madrid", "barcelona"]
 
# pretty_cities = cities.map {|city| city.capitalize} 
# p pretty_cities


#REDUCE

# total = [1,2,3].reduce do | sum, num |
# 	sum +  num
# end
# puts total

#reduce exercise
 cities = ["miami", "madrid", "barcelona"]
cities_length = cities.reduce(0) do  | sum , x | 
	sum + x.length
end

puts cities_length / cities.count

#reduce example 2
# cities.each_with_index do | city, index |
# 	puts "#{index}: #{city}"
# end
