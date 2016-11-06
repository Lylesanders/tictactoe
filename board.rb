class Board

	attr_reader :position_board, :update

	def initialize 
		@empty_square = "-"# unplaid square is empty
		# @board = Array.new(9,"")
		@position_board = Array.new(9,"")

	end #initialize

	def update(place,mark)
		@position_board[place.to_i] = mark
	end #update

end # class board
