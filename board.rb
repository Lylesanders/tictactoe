class Board

	attr_accessor :position_board, :update, :available_space # this section contains the names of the functions in this class, no question marks in this section
	# question do all functions to be called in this class have to be listed in  attr_accessor?

	def initialize 
		@empty_square = "-"# unplaid square is empty
		@board = Array.new(9,"")
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

	def winner?(mark)
		# true
		position_board[0] == mark && position_board[1] == mark && position_board[2] == mark ||
		position_board[3] == mark && position_board[4] == mark && position_board[5] == mark ||
		position_board[6] == mark && position_board[7] == mark && position_board[8] == mark ||
		position_board[0] == mark && position_board[3] == mark && position_board[6] == mark ||
		position_board[1] == mark && position_board[4] == mark && position_board[7] == mark ||
		position_board[2] == mark && position_board[5] == mark && position_board[8] == mark ||
		position_board[0] == mark && position_board[4] == mark && position_board[8] == mark ||
		position_board[2] == mark && position_board[4] == mark && position_board[6] == mark 

		# puts "Board"
		# puts "#{position_board[0]}|#{position_board[1]}|#{position_board[2]}"
		# puts "#{position_board[3]}|#{position_board[4]}|#{position_board[5]}"
		# puts "#{position_board[6]}|#{position_board[7]}|#{position_board[8]}"
		# puts "end board"
	end





end # class board
