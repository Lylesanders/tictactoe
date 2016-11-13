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


    def make_move(move)
    	board.update(move,current_player.marker)
    end

    def get_move
    	current_player.get_move(board.)
    end

    def print_board

    	puts """ 

    	Lets begin the game with 
    	This sample board with numbers:

    	 1 | 2 | 3 
    	---+---+---
    	 4 | 5 | 6 
    	---+---+---
    	 7 | 8 | 9

    	 game board:

    	 #{board.position_board[0]} | #{board.position_board[1]} | #{board.position_board[2]}
    	 ---+---+---
    	 #{board.position_board[3]} | #{board.position_board[4]} | #{board.position_board[5]}
    	---+---+---
    	 #{board.position_board[6]} | #{board.position_board[7]} | #{board.position_board[8]} 

    	 """
    end

    def end_message
    	if board.winner?(current_player.maker)
    		puts "#{current_player. marker} wins!"
    	else
    		board.full_board?
    		puts "Tie game"
    	end # if
    end # end message

    def select_second_player
    	true
    end


end # ConsloeGame
