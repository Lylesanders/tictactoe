require "minitest/autorun"
require_relative 'board.rb'
class TestBoard < Minitest::Test

    def test_new_board #tests that board shows up
        board = Board.new()
        assert_equal([" "," "," "," "," "," "," "," "," "], board.position_board)
    end

    def test_update_board
       board = Board.new
       board.update("1", "X")
       assert_equal([" ","X"," "," "," "," "," "," "," "], board.position_board)
    end
    def test_update_board_o
       board = Board.new
       board.position_board = ["","X"," "," "," "," "," "," "," "]
       board.update("0", "O")
       assert_equal(["O","X"," "," "," "," "," "," "," "], board.position_board)
    end

    

    def test_for_occupied_space_false
    	board = Board.new
       board.position_board = ["X","O"," "," "," "," "," "," "," "]
       assert_equal(false, board.valid_space?("0"))
    end
    def test_for_occupied_space_true
    	board = Board.new
       board.position_board = ["X","O"," "," "," "," "," "," "," "]
       assert_equal(true, board.valid_space?("2"))
    end

    def test_for_invalid_input
    	board = Board.new
    	assert_equal(false, board.valid_input?("9"))
    	assert_equal(false, board.valid_input?(11))
    end

    def test_input_invalid
    	board = Board.new
    	assert_equal(false, board.valid_input?("a"))	
    end
    def test_for_full_board?
       	board = Board.new
       board.position_board = ["X","O","X","O","X","O","X","O","X"]
       assert_equal(true, board.full_board?())
    end

    def test_for_winner_position_123_X
       	board = Board.new
       board.position_board = ["X","X","X"," "," "," "," "," "," "]
      symbol = "X"
       assert_equal(true, board.winner?(symbol))
    end

    def test_for_winner_position_123_O
       	board = Board.new
       board.position_board = ["O","O","O"," "," "," "," "," "," "]
      symbol = "O"
       assert_equal(true, board.winner?(symbol))
    end

    def test_for_false_winner
    	board = Board.new
      	board.position_board = ["O","X","O"," "," "," "," "," "," "]
     	symbol = "O"
       assert_equal(true, board.winner?(symbol))
   end


 end