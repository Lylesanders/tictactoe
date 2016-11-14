require_relative "board.rb"


class Human
		attr_reader :marker, :move, :board

	def initialize(marker)
		@marker = marker
		@board = Board.new
	end

	def get_move(board)
		# move =""
		puts "Select your square"
		move = gets.chomp.to_i
		move = move - 1
# puts "move = #{move}, value for board[move] is #{board[move]}"
		if board[move] == "" # from console_game line 37 undefined method []
			move
		else
			puts "That square is already occupied"
			get_move(board)
		end # if
	end #get move



	end #class human