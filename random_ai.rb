#require_relative"board.rb"
class RandomAI
    attr_reader :marker, :board
    def initialize(marker)
        @Board = board
        @marker = marker
    end # initialize

    def available_space?(board, place)
        board[place] ==""
    end #available space

    def ai_move(board)
    0
    end # ai_move



end #class RandomAI
