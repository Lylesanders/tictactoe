class Board

	attr_accessor :board, :update, :available_space, :board # this section contains the names of the functions in this class, no question markers in this section
	# question do all functions to be called in this class have to be listed in  attr_accessor?

	def initialize 
		@empty_square = "-"# unplaid square is empty
		@board = Array.new(9,"")
		# @board = Array.new(9,"")
		#@board = Board.new

	end #initialize

	def update(place,marker)
		
		puts "***************************board.rb update**********************"
		board[place.to_i] = marker
	end #update

	def available_space?(place)
		puts "$$$$$$$$$$$$$$$$$$$$$$$board.rb available_space$$$$$$$$$$$$$$$$$$$$$$$$"
		if board[place.to_i] != ""
			false
		else
			true
		end #if
	end # available space

	def full_board?
		board.count("") == 0
	end

	def winner?(marker) #from console_game game_over line 26 & game_loop 16

		# puts "Winner is here"
		# true
		board[0] == marker && board[1] == marker && board[2] == marker ||
		board[3] == marker && board[4] == marker && board[5] == marker ||
		board[6] == marker && board[7] == marker && board[8] == marker ||
		board[0] == marker && board[3] == marker && board[6] == marker ||
		board[1] == marker && board[4] == marker && board[7] == marker ||
		board[2] == marker && board[5] == marker && board[8] == marker ||
		board[0] == marker && board[4] == marker && board[8] == marker ||
		board[2] == marker && board[4] == marker && board[6] == marker 

		# puts "Board"
		# puts "#{board[0]}|#{board[1]}|#{board[2]}"
		# puts "#{board[3]}|#{board[4]}|#{board[5]}"
		# puts "#{board[6]}|#{board[7]}|#{board[8]}"
		# puts "end board"
	end
def valid_position(place)
	if place>to_i >=1 && place.to_i <= 9
		true
		else
		false
		end #if
end # valid position




end # class board
