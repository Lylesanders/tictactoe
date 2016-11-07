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



end # class test console game