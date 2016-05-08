require_relative('lib/board')

my_board = Board.new
my_board.show_board
my_board.add_character([2,0], "X")
puts "Hey I added a character"
my_board.show_board
my_board.add_character([1,1], "X")
puts "Hey I added a character"
my_board.show_board
my_board.add_character([0,2], "X")
puts "Hey I added a character"
my_board.show_board
