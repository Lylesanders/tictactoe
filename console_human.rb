class Human
		attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
		puts "Select your square"
		move = gets.chomp.to_i
		move = move - 1
		if board[move] == ""
			move
		else
			puts "That square is already occupied"
			get_move(board)
		end # if
	end #get move



	end #class human