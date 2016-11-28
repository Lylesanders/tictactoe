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