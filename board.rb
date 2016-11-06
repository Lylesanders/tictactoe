class Board

	attr_reader :position_board

	def initialize 
		@empty_square = "-"# unplaid square is empty
		# @board = Array.new(9,"")
		@position_board = Array.new(9,"")

	end #initialize

end # class board
