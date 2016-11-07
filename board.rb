class Board

	attr_accessor :position_board, :update, :available_space # this section contains the names of the functions in this class, no question marks in this section
	# question do all functions to be called in this class have to be listed in  attr_accessor?

	def initialize 
		@empty_square = "-"# unplaid square is empty
		# @board = Array.new(9,"")
		@position_board = Array.new(9,"")

	end #initialize

	def update(place,mark)
		@position_board[place.to_i] = mark
	end #update

	def available_space?(place)
		if position_board[place.to_i] != ""
			false
		else
			true
		end #if
	end # available space

	def full_board?
		position_board.count("") == 0
	end





end # class board
