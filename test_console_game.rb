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



end # class test console game