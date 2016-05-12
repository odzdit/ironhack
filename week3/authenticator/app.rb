# app.rb
require_relative("lib/authenticator.rb")
require_relative("lib/countwords.rb")

 
auth = Authenticator.new("Josh", "swordfish")

# Get login credentials
actions = ["Count Words", "Count Letters", "Reverse", "Uppercase", "Lowercase"]

puts "What is your username"
new_name = gets.chomp
puts "What is your password"
new_password = gets.chomp

if auth.authenticate(new_name, new_password)
	puts "Please type the text you want to run"
	# we ask for the sentence to the use
	sentence = gets.chomp
	# this sentence needs to be sent as a parameter to the word counter
	# since the word counter or CountWords class has the methods
	word_counter = CountWords.new(sentence)
	puts "Please select any of the following options to do with your text"
	puts actions
	new_user_input = gets.chomp
		if new_user_input == "Count Words"
			puts word_counter.count_words
		elsif new_user_input == "Count Letters"
			puts word_counter.count_letters
		elsif new_user_input == "Reverse"
			puts word_counter.reverse
		elsif new_user_input == "Uppercase"
			puts word_counter.uppercase
		elsif new_user_input == "Lowercase"
			puts word_counter.lowercase
		else
			puts "Your option is not valid"
		end
else
	puts "Your credentials are wrong"
end