require "minitest/autorun"
require_relative "random_ai.rb"

class TestRandomAI < Minitest::Test 

	def test_0_plus0_equal_0					# Begin all tests with test
		assert_equal(1, 1)	
	end

    def test_new_random_ai_player
        player = RandomAI.new("X")
        assert_equal("X",player.marker)
    end

    def test_position_available_true
        player = RandomAI.new("X")
        assert_equal(true,player.available_space?(["","X","O","X","O","X","O","X","X"],0))
    end # test position available true

    def test_position_available_false
        player = RandomAI.new("X")
        assert_equal(false,player.available_space?(["","X","O","X","O","X","O","X","X"],3))
    end # test position available false

    def test_random_ai_move_0
        player = RandomAI.new("X")
        assert_equal(0, player.ai_move(["","X","O","X","O","X","O","X","X"]))
    end #test random ai move 0
    def test_random_ai_move_1
        player = RandomAI.new("X")
        assert_equal(1, player.ai_move(["X","","O","X","O","X","O","X","X"]))
    end #test random ai move 1

        def test_random_ai_move_2
        player = RandomAI.new("X")
        assert_equal(2, player.ai_move(["X","O","","X","O","X","O","X","X"]))
    end #test random ai move 2

    end #class
