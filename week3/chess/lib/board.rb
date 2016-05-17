class Board
	def initialize(board)
		@board = board
	end

	def can_move?(starting_coords, ending_coords)
		starting_x = starting_coords[0]
		starting_y = starting_coords[1]
		ending_x = ending_coords[0]
		ending_y = ending_coords[1]

		@board[starting_y][starting_x].can_move?(ending_y, ending_x)
	end

	def on_board?(ending_x, ending_y)
		if (ending_x <= 8 && ending_x >= 1) && (ending_y <= 8 && ending_y >= 1)
				true
			else
				false
		end
	end
end


