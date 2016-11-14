class Board

	attr_accessor :position_board, :update, :available_space, :board # this section contains the names of the functions in this class, no question markers in this section
	# question do all functions to be called in this class have to be listed in  attr_accessor?

	def initialize 
		@empty_square = "-"# unplaid square is empty
		@board = Array.new(9,"")
		@position_board = Array.new(9,"")
		@board = Board.new

	end #initialize

	def update(place,marker)
		@position_board[place.to_i] = marker
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

	def winner?(marker)

		# puts "Winner is here"
		# true
		position_board[0] == marker && position_board[1] == marker && position_board[2] == marker ||
		position_board[3] == marker && position_board[4] == marker && position_board[5] == marker ||
		position_board[6] == marker && position_board[7] == marker && position_board[8] == marker ||
		position_board[0] == marker && position_board[3] == marker && position_board[6] == marker ||
		position_board[1] == marker && position_board[4] == marker && position_board[7] == marker ||
		position_board[2] == marker && position_board[5] == marker && position_board[8] == marker ||
		position_board[0] == marker && position_board[4] == marker && position_board[8] == marker ||
		position_board[2] == marker && position_board[4] == marker && position_board[6] == marker 

		# puts "Board"
		# puts "#{position_board[0]}|#{position_board[1]}|#{position_board[2]}"
		# puts "#{position_board[3]}|#{position_board[4]}|#{position_board[5]}"
		# puts "#{position_board[6]}|#{position_board[7]}|#{position_board[8]}"
		# puts "end board"
	end





end # class board
