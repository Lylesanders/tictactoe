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
    	 position.to_i >= 0 && position.to_i <= 8 && position =~ (/\d/)
    end

    # def integer?(position)
    # 	 if position =~ /^[0-9]/
    # 	 	true
    # 	 else
    # 	 	false
    # 	 end
    # end

end