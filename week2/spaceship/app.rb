require_relative ('lib/space_ship')
require_relative ('lib/space_ship_battle')
# Before creating any spaceships
# SpaceShip.number_of_spaceships

milennium_falcon = SpaceShip.new("Milennium Falcon", 100, "Proton Blaster", 900, 7)
falcon_nine = SpaceShip.new("Falcon Nine", 100, "Nine Blaster", 500, 9)

# Before creating any spaceships
# SpaceShip.number_of_spaceships

# milennium_falcon.fly
# => "Flying at #{speed}"

star_wars = SpaceShipBattle.new(milennium_falcon, falcon_nine)
star_wars.battle