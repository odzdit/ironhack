# Attributes
#   Shields
#   Blasters
#   Speed
# 	Name


#   Backburner
#   Pilots
#   Power Level

# Action
# Speed
# Power Level
# Damage

class SpaceShip
	@@space_ship_counter = 0
	attr_accessor :shield
	attr_accessor :name

	def initialize(name, shield, blasters, speed, damage)
		#instance variables related to one spacechip
		@name = name
		@shield = shield
		@blasters = blasters
		@speed = speed
		@damage = damage
		#class variable they are related for everything
		@@space_ship_counter += 1
	end

	#This is a method within a class
	def fly
		puts "The Spaceshop is flying at #{@speed} parsecs"
	end
	
	def dead?
		if @shield <= 0
		true
		else
		false
		end	
	end
	
	def attack(another_spaceship)
		another_spaceship.shield -= @damage
		puts "#{name} hit for #{@damage}"
		puts "#{another_spaceship.name} has #{another_spaceship.shield} left"
	end

	# Class Method, related to all instances of class
	def self.number_of_spaceships
		puts "The number of spaceships created #{@@space_ship_counter}"
	end

end

