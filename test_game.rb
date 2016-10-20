require "minitest/autorun"
require_relative 'tictactoe.rb'
class TestTicTacZToe < Minitest::Test 

	def test_one_equal_one_
		assert_equal(1,1)
	end

	def Player1_is_x(mark)
		player1 = "X"
		assert_equal("X", player1)
	end

end