   class Board
    attr_accessor :position_board, :update

    def initialize
         @empty_square = "-" #if the square has not been played it is empty
         #@board = Array.new(9, @empty_square) #makes an array of 9 " "'s
         @position_board = Array.new(9, " ")
       end
       
       def update(position, symbol) #this is how to space is updated
           @position_board[position.to_i] = symbol
       end


    

    def game_tied

    

    end
  
    def valid_space?(position)
    	if position_board[position.to_i] =="X" || position_board[position.to_i] == "O"
    		false
    	else
    		true
    	end

    end

    def valid_input?(position)
    	if position =~ /^[0-8]/ && position >= "0" && position <= "8" && position =~ (/\d/)
                true
            else
                false
            end
	 
    end

    def full_board?
    	position_board.count(" ") == 0

    end

    def winner?(symbol)
    	#HORIZONTAL
    	position_board[0] == symbol && position_board[1] == symbol && position_board[2] == symbol
    	position_board[3] == symbol && position_board[4] == symbol && position_board[5] == symbol
    	position_board[6] == symbol && position_board[7] == symbol && position_board[8] == symbol
    	# VERTICAL
    	position_board[0] == symbol && position_board[3] == symbol && position_board[6] == symbol
    	position_board[1] == symbol && position_board[4] == symbol && position_board[7] == symbol
    	position_board[2] == symbol && position_board[5] == symbol && position_board[8] == symbol
    	#DIAGONAL
    	position_board[0] == symbol && position_board[4] == symbol && position_board[8] == symbol
    	position_board[2] == symbol && position_board[4] == symbol && position_board[6] == symbol
    end

end