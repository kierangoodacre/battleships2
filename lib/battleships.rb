require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/board.rb'
require './lib/cell.rb'
require './lib/ship.rb'

class BattleShips < Sinatra::Base
  
  enable :sessions

  game = Game.new

  get '/' do
    erb :index
  end
  
  # get '/loadgame' do
  #   session[:ship] = Ship.new(3)
  #   session[:board] = Board.new(Cell)
  #   erb :loadgame
  # end

  get '/newgame' do
    session[:player] = Player.new
    @player = session[:player]
    @player.name = params[:name]
    game.player1 = @player
    p @player.inspect
    erb :newgame
  end

  get '/game' do
    @board = Board.new(Cell)
    @ship = Ship.new(3)
    @grid = @board.grid
    @keys = @grid.keys
    @coord = params[:coord]
    @place_ship = params[:ship]
    @placed_ship = @board.place(@ship, :A5)
    erb :game
  end

  get '/miss' do
    erb :miss
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
