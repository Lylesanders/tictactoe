require_relative "console_game.rb"
require_relative "console_human.rb"
require_relative "board.rb"

# board = Board.new
# human = Human.new
game = ConsoleGame.new(Human.new("x"), Human.new("o"))

game.print_board

move = game.get_move(board) # from console_human det_move(board)

# game.make_move(move)