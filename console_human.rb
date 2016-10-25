class Human
	attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
		puts "Make a move >>"
		move = gets.chomp.to_i
	end


end	
