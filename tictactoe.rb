def make_board(p)

puts "\n\n"
 puts " #{p[0]} | #{p[1]} | #{p[2]} "
 puts "-----------"
 puts " #{p[3]} | #{p[4]} | #{p[5]} "
 puts "-----------"
 puts " #{p[6]} | #{p[7]} | #{p[8]} "
puts "\n\n"

end

def main_loop(p)
make_board(p)

end

def set_players
	prompt = ">> "
	puts "Player 1, what is your name?"
	print prompt
	player_1_name = gets.chomp
	puts "OK: #{player_1_name} are you using X or O?"
	print prompt
	player1 = gets.chomp
	player1.upcase!
	if player1 == "X"
		player2 ="O"
	else
		player2 = "X"
	end
end

# initialized_game

# def initialized_game
	p = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
# end
set_players
main_loop(p)