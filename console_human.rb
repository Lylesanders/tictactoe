class Console_Human
	attr_accessor :marker  #

	def initialize(marker)
		@marker = marker
	end # initialize

	def get_move(board)
		puts "Make a move >>"
		move = gets.chomp.to_i
			if board[move] == ""
				move
			else
				puts "Sorry, that space is already taken, please select another?"
				get_move(board)
			end # if 
	end #get move


end	#class human
