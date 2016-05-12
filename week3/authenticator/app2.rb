# app.rb
require("pry")
require_relative("lib/authenticator.rb")
require_relative("lib/countwords.rb")
require_relative("lib/counterpicker.rb")

 
auth = Authenticator.new("Josh", "swordfish")

# Get login credentials
actions = ["Count Words", "Count Letters", "Reverse", "Uppercase", "Lowercase"]

puts "What is your username"
new_name = gets.chomp
puts "What is your password"
new_password = gets.chomp

if auth.authenticate(new_name, new_password)
		puts "Please type the text you want to run"
	sentence = gets.chomp
	word_counter = CountWords.new(sentence)
	binding.pry
		puts "Please select any of the following options to do with your text"
		puts actions
	operation = gets.chomp
	counter_picker = CounterPicker.new(operation, word_counter)
	counter_picker.perform_operation
else
	puts "Your credentials are wrong"
end