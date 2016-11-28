class Board
attr_accessor :board

    def initialize(board)
        @board = board
    end #initialize

    def board_positions()
        new_board = []
        board.each_with_index do |value, index|
            if value == "X" || value == "O"
                new_board.push(value)
            else
                new_board.push(index + 1)
            end #if
        end # do loop
        new_board
    end # def board_positions

    def update(position, marker)
        board[position] = marker
    end # update

    def valid_space?(position)
        position = (position - 1)
        position >= 0 && position <= 8 && grid[position] == ""
    end # valid space

    def full_board?
        grid.count("") == 0
    end # full board

    def winner?(marker)
        result = false
        winning_combo = [[grid[0],grid[1],grid[2]],
                         [grid[3],grid[4],grid[5]],
                         [grid[6],grid[7],grid[8]],
                         [grid[0],grid[3],grid[6]],
                         [grid[1],grid[4],grid[7]],
                         [grid[2],grid[5],grid[8]],
                         [grid[0],grid[4],grid[8]],
                         [grid[2],grid[4],grid[6]]]  

        winning_combo.each do |winner|
            if winner.count(marker) == 3
                result = true
            end # if
        end # do loop
        result
    end # winner


end # class board