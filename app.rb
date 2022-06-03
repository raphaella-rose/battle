require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'


class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions
  get '/' do
    'Testing infrastructure working!'
  end

  get '/battle' do
    erb(:index)
  end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name])
    $player_2_name = Player.new(params[:player_2_name])
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = $player_1_name.name
    @player_2_name = $player_2_name.name
    erb(:play)
  end

  get '/attack' do
    @player_1_name = $player_1_name.name
    @player_2_name = $player_2_name.name
    erb(:attack)
  end

  run! if app_file == $0
end