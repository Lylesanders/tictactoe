   class Board
    attr_accessor :position_board, :update

    def initialize
         @empty_square = "-" #if the square has not been played it is empty
         #@board = Array.new(9, @empty_square) #makes an array of 9 " "'s
         @position_board = Array.new(9, " ")
       end
       def update(position, symbol) #this is how to space is updated
           @position_board[position] = symbol
       end


    

    def game_tied

    

    end

    

    def valid_space?(position)
    	if position_board[position] =="X" || position_board == "O"
    		false
    	else
    		true
    	end

    end

    def valid_input?(position)
    	 position >= 0 && position <=8


    end
end