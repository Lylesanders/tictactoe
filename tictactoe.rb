def make_board(position)	# print tic tac toe board with values from a position array
	puts "\n\n"
	 puts " #{position[0]} | #{position[1]} | #{position[2]} "
	 puts "-----------"
	 puts " #{position[3]} | #{position[4]} | #{position[5]} "
	 puts "-----------"
	 puts " #{position[6]} | #{position[7]} | #{position[8]} "
	puts "\n\n"
end

def initialize_game			#set all game variables to default settings

end

def take_turns(turn,player,position)		# gets the players input and updates the position array
	puts "Player 1, #{player[0]}"
	puts "player 2, #{player[1]}"
	puts "control turn = #{turn}"
	puts "player #{turn+1} choose your square"
	mark1 = gets.chomp.to_i
	mark = mark1-1
	position[mark] = player[turn]

end

def find_winner(position)	# checks multiple places in the array to determine winner

end

# def game_menu

#end

# def game_instructions
	
# end

# def main_loop				#controls the game play
	position =[" "," "," "," "," "," "," "," "," "]
	player = ["X","O"]
	turn = 0
	make_board(position)
	#begin main game loop here, should be a while loop that breaks if find_winner not equal none

	9. times do 
	take_turns(turn,player,position)
	make_board(position)
		if turn == 0
			turn =1
		else
			turn = 0
		end
	end