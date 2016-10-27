require_relative 'board.rb'
require_relative 'console_human.rb'

# gameplay function

class ConsoleGame

	attr_accessor :board, :player_1, :player_2, :current_player, :counter

	def initialize(player1, player2)
		@board = Board.new
		@player_1 = player_1
		@player_2 = player_2
		@current_player = player_1
		@counter = 1

	end

	def print_board

		puts " Lets begin the game.\n"
		puts " Board Positions. \n\n"
		puts " 1 | 2 | 3 "
		puts "---+---+---"
		puts " 4 | 5 | 6 "
		puts "---+---+---"
		puts " 7 | 8 | 9  \n\n "
		puts " Game Bolard"



		puts "\n\n"
	 	puts " #{position[0]} | #{position[1]} | #{position[2]} "
		puts "-----------"
		puts " #{position[3]} | #{position[4]} | #{position[5]} "
	 	puts "-----------"
	 	puts " #{position[6]} | #{position[7]} | #{position[8]} "
		puts "\n\n"

	end

	end
