require_relative "board.rb"
require_relative "console_human.rb"
	
class ConsoleGame
    attr_accessor :board, :player_1, :player_2, :current_player, :winner

    def initialize(player_1, player_2)
        @board = Board.new
        @player_1 = player_1
        @player_2 = player_2
        @current_player = player_2
        @winner = winner
    end



    def change_player
        if current_player == player_1
            @current_player = player_2
        else
            @current_player = player_1
        end
        @current_player
    end

    def game_over?
    	# puts "Testing for game over"
    	board.full_board? || board.winner?(current_player)
    end




    end # ConsloeGame