require_relative "board.rb"


class Console_human
		attr_reader :marker  #, :move, :board

	def initialize(marker)
		@marker = marker
		# @board = Board.new
	end

	def get_move(board) #ask Susan about this Tuesday
		"NO"
	end #get_move
end #class human