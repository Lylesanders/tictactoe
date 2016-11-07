require "minitest/autorun"
require_relative "console_human.rb"

class TestConsoleHuman < Minitest::Test 

	# def test_0_plus0_equal_0					# Begin all tests with test
	# 	assert_equal(1, 1)	
	# end

	def test_make_human_X
		player = Human.new("X")
		assert_equal("X", player.marker)
	end 

	def test_make_human_O
		player = Human.new("O")
		assert_equal("O", player.marker)
	end 




end #class test console human