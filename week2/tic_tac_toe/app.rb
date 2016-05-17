require_relative('lib/board')

# Welcome to the game player 1
puts "Hello Player 1, whats your name?"
player_1 = gets.chomp
puts "Welcome #{player_1}, Player 2 what's your name?"
player_2 = gets. chomp
puts "Welcome #{player_2} you will be facing #{player_1}"
puts "Here's the empty board, #{player_1} it's your turn" 
puts "where do you want to place your X? \n"
my_board = Board.new
my_board.show_board

puts "Choose X axis location between 0-2"
player_1_x = gets.chomp.to_i
puts "Choose Y axis location betwen 0-2"
player_1_y  = gets.chomp.to_i
my_board.add_character([player_1_x, player_1_y], "X")
my_board.show_board
puts "#{player_1} Added a character, It's #{player_2}'s turn"

puts "Choose X axis location between 0-2"
player_2_x = gets.chomp.to_i
puts "Choose Y axis location betwen 0-2"
player_2_y  = gets.chomp.to_i
my_board.add_character([player_2_x, player_2_y], "O")
my_board.show_board
puts "#{player_2} Added a character, It's #{player_1}'s turn"

puts "Choose X axis location between 0-2"
player_1_x = gets.chomp.to_i
puts "Choose Y axis location betwen 0-2"
player_1_y  = gets.chomp.to_i
my_board.add_character([player_1_x, player_1_y], "X")
my_board.show_board
puts "#{player_1} Added a character, It's #{player_2}'s turn"

puts "Choose X axis location between 0-2"
player_2_x = gets.chomp.to_i
puts "Choose Y axis location betwen 0-2"
player_2_y  = gets.chomp.to_i
my_board.add_character([player_2_x, player_2_y], "0")
my_board.show_board
puts "#{player_2} Added a character, It's #{player_1}'s turn"

puts "Choose X axis location between 0-2"
player_1_x = gets.chomp.to_i
puts "Choose Y axis location betwen 0-2"
player_1_y  = gets.chomp.to_i
my_board.add_character([player_1_x, player_1_y], "X")
my_board.show_board
puts "#{player_1} Added a character, It's #{player_2}'s turn"















# my_board.add_character([1,1], "X")
# puts "Hey I added a character"
# my_board.show_board
# my_board.add_character([2,2], "X")
# puts "Hey I added a character"
# my_board.show_board
