require "minitest/autorun"
require_relative "sequential_ai.rb"

class TestSequentialAI < Minitest::Test 

	# def test_0_plus0_equal_0					# Begin all tests with test
	# 	assert_equal(1, 1)	
	# end

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

	def test_for_2_with_board
		current_player = Sequential_ai.new("O")
		assert_equal(2,current_player.get_move(["X","O",""]) )
	end

	def test_for_3_with_board
		current_player = Sequential_ai.new("O")
		assert_equal(3,current_player.get_move(["X","O","X",""]) )
	end

	def test_for_4_with_board
		current_player = Sequential_ai.new("O")
		assert_equal(4,current_player.get_move(["X","O","X","O",""]) )
	end

	def test_for_5_with_board
		current_player = Sequential_ai.new("O")
		assert_equal(5,current_player.get_move(["X","O","X","O","X",""]) )
	end

	def test_for_6_with_board
		current_player = Sequential_ai.new("O")
		assert_equal(6,current_player.get_move(["X","O","X","O","X","O",""]) )
	end	

	def test_for_7_with_board
		current_player = Sequential_ai.new("O")
		assert_equal(7,current_player.get_move(["X","O","X","O","X","O","X",""]) )
	end	

	def test_for_8_with_board
		current_player = Sequential_ai.new("O")
		assert_equal(8,current_player.get_move(["X","O","X","O","X","O","X","O",""]) )
	end	
	def test_create_player_sequential_ai_X
		current_player = Sequential_ai.new("X")
		assert_equal("X", current_player.marker)
	end # test create player sequential ai


end # class