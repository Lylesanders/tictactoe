require 'sinatra'
require 'rubygems'
require_relative "new_board.rb"
require_relative "human.rb"
require_relative "random_ai.rb"
require_relative "sequential_ai.rb"
require_relative "unbeatable_ai.rb"


enable :sessions
play_board = Board.new #(["","","","","","","","",""])

ai = ""

get '/' do
    session[:board] = Board.new #(["","","","","","","","",""])
   
    erb :home, :layout => :home_layout, :locals =>{ :board => session[:board].board_positions}
end #get '/' do

get'/player_1_name' do
    erb :player_1_name, :layout => :home_layout, :locals =>{ :board => session[:board].board_positions}
end

post '/player_1_name' do
    session[:player_1_name] = params[:player_1]
    session[:player_1] = Console_human.new("X")
    session[:current_player] = session[:player_1]
    session[:current_player_name] = session[:player_1_name]
    erb :opponent, :layout => :home_layout, :locals =>{ :board => session[:board].board_positions, :player_1_name => session[:player_1_name] }
end




post '/choose_opponent' do
    player_2 = params[:player_2]

    if player_2 =="human"
        session[:player_2] = Console_human.new("O")

        erb :player_2_name, :layout => :home_layout, :locals =>{ :board => session[:board].board_positions}
        session[:player_2_name] = session[:player_2]

        redirect '/player_2_name'

    elsif player_2 =="sequential_ai"
        session[:player_2] = SequentialAi.new("O")
        session[:player_2_name] = "Easy"

        redirect '/get_move'

    elsif player_2 =="random_ai"
        session[:player_2] = RandomAi.new("O")
        session[:player_2_name] = "Medium"

        redirect '/get_move'

    elsif player_2 =="unbeatable_ai"
        session[:player_2] = UnbeatableAi.new("O")
        session[:player_2_name] = "Hard"

        redirect '/get_move'
    end
end

get '/player_2_name' do
    erb :player_2_name, :layout => :home_layout, :locals =>{ :board => session[:board].board_positions, :player_2_name => session[:player_2_name] }
end

post '/player_2_name' do
    session[:player_2_name] = params[:player_2]
    redirect '/get_move'

end

get '/get_move' do
    move = session[:current_player].get_move(session[:board].board)

    if move == "NO"
    erb :get_move, :locals =>{ :current_player =>session[:current_player], :current_player_name => session[:current_player_name], :board => session[:board].board_positions }

    elsif session[:board].valid_space?(move)
        redirect 'make_move?move=' +move.to_s
        else
            redirect '/get_move'
        end # if
            end
    
    post '/get_player_move' do
    move = params[:square].to_i

    if session[:board].valid_space?(move)
        redirect'/make_move?move=' + move.to_s

        else
            redirect '/get_move'
        end

    end
