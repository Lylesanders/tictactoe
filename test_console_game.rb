require "minitest/autorun"
require_relative "console_game.rb"

class TestConsoleGame < Minitest::Test 

	def test_0_plus0_equal_0					# Begin all tests with test
		assert_equal(1, 1)	
	end

	def test_create_player
		player = Human.new("X")
		assert_equal("X", player.marker)
	end

	def test_for_change_player
		player_1 = player_1
		player_2 = player_2
		game = ConsoleGame.new(player_1, player_2)
		game.current_player = player_2
		assert_equal(player_1, game.current_player)
	end

	def test_game_not_over
		player_1 = player_1
		player_2 = player_2		
		game = ConsoleGame.new(player_1, player_2)
		assert_equal(false, game.board.winner?(player_1))
	end #test game not over

	def test_tie_game_over
		player_1 = player_1
		player_2 = player_2
		game = ConsoleGame.new(player_1, player_2)
		board = board
		game.board.position_board[0] = "X"	
		game.board.position_board[1] = "O"	
		game.board.position_board[2] = "X"	
		game.board.position_board[3] = "O"	
		game.board.position_board[4] = "X"	
		game.board.position_board[5] = "X"	
		game.board.position_board[6] = "O"	
		game.board.position_board[7] = "X"	
		game.board.position_board[8] = "O"	

		assert_equal(true, game.board.full_board?)
	end

	# def test_winner_player_1
	# 	player_1 = player_1
	# 	player_2 = player_2
	# 	game = ConsoleGame.new(player_1, player_2)
	# 	board = Board
	# 	mark = "X"
	# 	player_1 = mark 
	# 	game.board.position_board[0] = "X"	
	# 	game.board.position_board[1] = "X"	
	# 	game.board.position_board[2] = "X"	
	# 	assert_equal(true, game.game_over?)
	# end





end # class test console game