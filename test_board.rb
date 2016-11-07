require "minitest/autorun"
require_relative "board.rb"

class TestBoard < Minitest::Test 

	# def test_0_plus0_equal_0					# Begin all tests with test
	# 	assert_equal(1, 1)	
	# end

	def test_new_board # test that new board is created 1
		board = Board.new()
		assert_equal(["","","","","","","","",""], board.position_board)
	end # test new board

	def test_first_update_of_board #2
		board = Board.new
		board.update(0,"X")
		assert_equal(["X","","","","","","","",""], board.position_board)
	end # test first update of board

	def test_second_update_of_board #3
		board = Board.new
		board.position_board = ["X","","","","","","","",""]
		board.update(1,"O")
		assert_equal(["X","O","","","","","","",""], board.position_board)

	end # test second update of board

	def test_no_update_occupied_space #4
		board = Board.new
		board.position_board = ["X","O","","","","","","",""]
		assert_equal(false, board.available_space?(1))
	end # test no update occupied space

	def test_full_board #5
		board = Board.new
		board.position_board = ["X","O","X","O","X","O","X","O","X"]
		assert_equal(true,board.full_board?)
	end # test full board

	def test_not_full_board #6
		board = Board.new
		board.position_board = ["X","O","X","O","X","O","X","O",""]
		assert_equal(false,board.full_board?)
	end	# test not full board

	def test_winner_123 #7
		board = Board.new
		board.position_board = ["X","X","X","","O","","","","O"]
		mark = "X"
		assert_equal(true, board.winner?(mark))
	end #test winner 123





end # class

