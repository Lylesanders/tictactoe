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