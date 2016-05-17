require_relative('lib/piece')
require_relative('lib/rook')
require_relative('lib/bishop')
require_relative('lib/queen')
require_relative('lib/kings')
require_relative('lib/blackpawn')
require_relative('lib/whitepawn')
require_relative('lib/knight')
require_relative('lib/board')


# Rook Tests
white_rook = Rook.new(1, 1)
white_bishop = Bishop.new(2, 1)
white_queen = Queen.new(4, 1)
white_king = King.new(5, 1)
white_pawn = WhitePawn.new(2,2)
black_pawn = BlackPawn.new(1,7)
black_knight = Knight.new(5,5)

# puts "Good Rook Moves"
# puts white_rook.can_move?(1, 5)
# puts white_rook.can_move?(5, 1)
# puts "Bad Rook Moves"
# puts white_rook.can_move?(5, 3)


# Bishop Tests
# puts "Good Bishop Moves"
# puts white_bishop.can_move?(3, 2)
# puts white_bishop.can_move?(4, 3)
# puts "Bad Bishop Moves"
# puts white_bishop.can_move?(3, 1)


# Queen Tests
# puts "Good Queen Moves"
# puts white_queen.can_move?(5, 2)
# puts white_queen.can_move?(4, 4)
# puts white_queen.can_move?(2, 3)
# puts white_queen.can_move?(4, 8)
# puts "Bad Queen Moves"
# puts white_queen.can_move?(2, 2)


# # King Tests
# puts "Good King Moves"
# puts white_king.can_move?(4, 1)
# puts white_king.can_move?(5, 2)
# puts "Bad King Moves"
# puts white_king.can_move?(2, 2)

# BlackPawn Tests
# puts "Good Black Pawn Moves"
# puts black_pawn.can_move?(1, 4)
# puts "Bad Black Pawn Moves"
# puts black_pawn.can_move?(3, 3)

 # WhitePawn Tests
# puts "Good White Pawn Moves"
# puts white_pawn.can_move?(2, 3)
# puts white_pawn.can_move?(2, 4)
# puts "Bad White Pawn Moves"
# puts white_pawn.can_move?(5, 3)
 

 # BlackKnight Tests
# puts "Good Black Knight Moves"
# puts black_knight.can_move?(3, 6)
# puts black_knight.can_move?(7, 6)
# puts "Bad Black Knight Moves"
# puts black_knight.can_move?(5, 3)


board = [
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
		]

board[1][1] = Rook.new(1 , 1)
board[1][2] = Knight.new(1 , 2)
board[1][3] = Bishop.new(1 , 3)
board[1][4] = Queen.new(1 , 4)
board[1][5] = King.new(1 , 5)
board[1][6] = Bishop.new(1 , 6)
board[1][7] = Knight.new(1 , 7)
board[1][8] = Rook.new(1 , 8)
board[2][1] = BlackPawn.new(2 , 1)
board[2][2] = BlackPawn.new(2 , 2)
board[2][3] = BlackPawn.new(2 , 3)
board[2][4] = BlackPawn.new(2 , 4)
board[2][5] = BlackPawn.new(2 , 5)
board[2][6] = BlackPawn.new(2 , 6)
board[2][7] = BlackPawn.new(2 , 7)
board[2][8] = BlackPawn.new(2 , 8)
board[8][1] = Rook.new(8 , 1)
board[8][2] = Knight.new(8 , 2)
board[8][3] = Bishop.new(8, 3)
board[8][4] = Queen.new(8 , 4)
board[8][5] = King.new(8 , 5)
board[8][6] = Bishop.new(8 , 6)
board[8][7] = Knight.new(8 , 7)
board[8][8] = Rook.new(8 , 8)
board[7][1] = WhitePawn.new(7 , 1)
board[7][2] = WhitePawn.new(7 , 2)
board[7][3] = WhitePawn.new(7 , 3)
board[7][4] = WhitePawn.new(7 , 4)
board[7][5] = WhitePawn.new(7 , 5)
board[7][6] = WhitePawn.new(7 , 6)
board[7][7] = WhitePawn.new(7 , 7)
board[7][8] = WhitePawn.new(7 , 8)

my_board = Board.new(board)
my_board.on_board?(2 , 2)






