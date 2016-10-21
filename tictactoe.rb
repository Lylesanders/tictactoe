def make_board(p)

puts "\n\n"
 puts " #{p[0]} | #{p[1]} | #{p[2]} "
 puts "-----------"
 puts " #{p[3]} | #{p[4]} | #{p[5]} "
 puts "-----------"
 puts " #{p[6]} | #{p[7]} | #{p[8]} "
puts "\n\n"

end

# def main_loop(p,player1,player2)
# make_move(player1,player2)
# make_board(p)

# end

# def set_players #(player1,player2)

# end

def make_move(player1,player2)
	puts "hello world "
end

# initialized_game

# def initialized_game
	p = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
# end
#set_players
player1 = " "
player2 = " "

	prompt = ">> "
	puts "Player 1, what is your name?"
	print prompt
	player_1_name = gets.chomp
	puts "OK: #{player_1_name} are you using X or O?"
	print prompt
	player1 = gets.chomp
	player1.upcase!

	puts player1
	if player1 == "X"
		player2 ="O"
	else
		player2 = "X"
	end


puts "player 1 #{player1}"
puts "player 2 #{player2}"
puts "hello world"
	turn = 1
	make_board(p)
9.times do

	#take turn
	puts "choose your position"
	mark1 = gets.chomp.to_i
	mark = mark1-1
	p[mark] = player1

make_board(p)
	if turn ==1
		turn = 2
	else
		turn = 1
	end
end
