require_relative "board.rb"
require_relative "console_human.rb"
require_relative "sequential_ai.rb"
require_relative "random_ai.rb"
	
class ConsoleGame
    attr_accessor :board, :player_1, :player_2, :current_player, :winner

    def initialize(player_1, player_2)
        @board = Board.new
        @player_1 = player_1
        @player_2 = select_second_player
        @current_player = player_2 #referenced game_loop.rb 11
        @winner = winner
    end # initialize



    def change_player
        if current_player == player_1
            @current_player = player_2
        else
            @current_player = player_1
        end # if
        @current_player
    end # change player

    def game_over?  #called from game_loop.rb line 9 until game.game_over
    	# puts "Testing for game over"
    	board.full_board? || board.winner?(current_player.marker)
    end # game over


    def make_move(move)
    	
    	board.update(move,current_player.marker)
    end # make board

    def get_move

    	current_player.get_move(board.board) # from game_loop line 11 to console human line 18
    end # current move

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

    	   #{board.board[0]} | #{board.board[1]}  | #{board.board[2]}
    	 ----+----+----
    	   #{board.board[3]} | #{board.board[4]}  | #{board.board[5]}
    	 ----+----+----
    	  #{board.board[6]}  | #{board.board[7]}  | #{board.board[8]} 

    	 """
    end # print board

    def end_message  #called from game_loop game.end_essage line 23
    	if board.winner?(current_player.marker)
    		puts "#{current_player. marker} wins!"
    	else
    		board.full_board?
    		puts "Tie game"
    	end # if
    end # end message

    def select_second_player
        puts """

            Who would you like to play against?

            Press:  
                    1 - Human
                    2 - Console AI 
                    
            Then press ENTER

        """
        who = {1 => Human, 2 => Sequential_ai}
        choice = gets.chomp.to_i
        player = who[choice].new("O")

    end # select second player



end # ConsloeGame
