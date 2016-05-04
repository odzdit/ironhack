# Attributes
	# Attacking Spaceship
	# Defending Spaceship

# Actions
	#  Battle

class SpaceShipBattle
	def initialize(first_spaceship, second_spaceship)
		@attacking_spaceship = first_spaceship
		@defending_spaceship = second_spaceship
	end

	def battle
	# Make the ships attack each other until one of them is dead
	# Until the attacking spaceship shield is 0 or until the defending ship's shield is zero
		until @attacking_spaceship.dead? || @defending_spaceship.dead?
		# Have each spaceship attack the other
			@attacking_spaceship.attack(@defending_spaceship)
		# Switch position
			new_attacker = @defending_spaceship.clone
			new_defender = @attacking_spaceship.clone

			@attacking_spaceship = new_attacker
			@defending_spaceship = new_defender
	end
	puts "The battle has ended"
end
end
