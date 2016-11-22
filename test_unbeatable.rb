require "minitest/autorun"
require_relative "unbeatableAI.rb"
class Testunbeatableai < Minitest::Test

	# def test_one_equal_one
	# 	assert_equal(1,1)
	# end # 1 = 1

	def test_unbeatable_AI_player
        player = UnbeatableAi.new("x")
		assert_equal("x", player.marker)
	end # test unbeatable ai player

	



end# class