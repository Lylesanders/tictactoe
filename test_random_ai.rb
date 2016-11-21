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

    end #class
