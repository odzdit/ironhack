# What does a car do?
# Starts
# Plays Radios

# What defines mar car?
# color
# make
# year
# engine
# price


class Car

attr_accessor :color #this can make the color attribute modifiable outside the class

	def initialize(my_color, my_sound)
		@color = my_color # this local variables can be used in the different instance methods repeatedly
		@sound = my_sound
	end
#this is an instance method
	def honk
	#Instance method
		puts "My #{@color} car goes #{@sound}"
	end
	
	def play_radio
		puts "Waka Flaka is going hard in the paint (on the radio)"
	end

end

class RaceCar < Car
	def honk
		puts "My #{@color} car goes #{@sound.upcase}"
	end
end
volvo = Car.new("Red", "whaaat") #you can add as many parameters to the class
mazda = Car.new("Yellow", "yeaaaah")
honda = Car.new("Orange","swaaaag")
tesla = Car.new("Black", "rolf")
ferrari = RaceCar.new("Red", "vroom")

volvo.honk
mazda.honk
ferrari.honk
