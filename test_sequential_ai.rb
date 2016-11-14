require "minitest/autorun"
require_relative "sequential_ai.rb"

class TestSequentialAI < Minitest::Test 

	def test_0_plus0_equal_0					# Begin all tests with test
		assert_equal(1, 1)	
	end

	def test_create_player_sequential_ai
		current_player = Sequential_ai.new("O")
		assert_equal("O", current_player.marker)
	end # test create player sequential ai

	def test_for_0_with_board
		current_player = Sequential_ai.new("O")
		assert_equal(0,current_player.get_move(["","X","O"]) )
	end

	def test_for_1_with_board
		current_player = Sequential_ai.new("O")
		assert_equal(1,current_player.get_move(["X","","O"]) )
	end

end # class