


ninja = Motorcycle.new
mazda = Sedan.new
hoverboard = Hoverboard.new
my_cycle = Unicycle.new
truck = Truck.new

array_of_vehicles = [ninja, mazda, hoverboard, my_cycle, truck]

wheel_counter = WheelCounter.new(array_of_vehicles)
wheel_counter.count_wheels
