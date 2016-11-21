#require_relative"board.rb"
class RandomAI
    attr_reader :marker
    def initialize(marker)
        #@Board = board
        @marker = marker
    end # initialize

    def available_space?(board, place)
        board[place] ==""
    end #available space

    def get_move(board)
        random_move = rand(0..8)
        if available_space?(board, random_move) == false
            get_move(board)
            else
                random_move
            end # if
    end # ai_move

end #class RandomAI
