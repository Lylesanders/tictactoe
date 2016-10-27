require "minitest/autorun"
require_relative "game_loop.rb"
require_relative "board.rb"
class TestGameLoop < Minitest::Test 

	def test_one_equal_one
		assert_equal(1,1)
	end # of test one equal one

	def test_create_human
		player = Human.new("X")
		assert_equal("X", player.marker)
	end # of test create human

end #of class