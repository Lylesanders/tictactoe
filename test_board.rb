require "minitest/autorun"
require_relative "board.rb"

class TestBoard < Minitest::Test 

	# def test_0_plus0_equal_0					# Begin all tests with test
	# 	assert_equal(1, 1)	
	# end

	def test_new_board # test that new board is created
		board = Board.new()
		assert_equal(["","","","","","","","",""], board.position_board)
	end

	def test_first_update_of_board
		board = Board.new
		board.update(0,"X")
		assert_equal(["X","","","","","","","","",], board.position_board)
	end # test first update of board



end # classw

