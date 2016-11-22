class UnbeatableAi # wikipedia.org/wiki/tic-tac-toe
    attr_accessor :marker, :open_spot

    def initialize(marker)
        @marker = marker
        @open_spot = 10
    end

    def get_move(board)
    	@open_spot =10
        comp_marker = marker
        puts "computer marker = #{comp_marker}"
            if comp_marker =="O"
                player_marker ="X"
                else
                player_marker = "O"
            end #if comp marker = O

            if check_for_center_square(board)
                move = open_spot
                else 
                move =1
                end #if *lines 21 22 and 23 will be removed after testing

    end # get_move

    def check_for_center_square(board)
        if board[4] == ""
            @open_spot = 4
            else
                @open_spot = 8
            end #if
        end # check_for_center_square






end # class unbeatable AI
        # board[0] == symbol && board[1] == symbol && board[2] == symbol ||
        # board[3] == symbol && board[4] == symbol && board[5] == symbol ||
        # board[6] == symbol && board[7] == symbol && board[8] == symbol ||
        # board[0] == symbol && board[3] == symbol && board[6] == symbol ||
        # board[1] == symbol && board[4] == symbol && board[7] == symbol ||
        # board[2] == symbol && board[5] == symbol && board[8] == symbol ||
        # board[0] == symbol && board[4] == symbol && board[8] == symbol ||
        # board[2] == symbol && board[4] == symbol && board[6] == symbol
        # winning = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]