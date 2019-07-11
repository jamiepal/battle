# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/player'

# this is the battle class
class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'Yo-yo'
  get '/' do
    erb(:index)
  end

  get '/test' do
    'Hello World!'
  end

  post '/names' do
    $player_1 = Player.new(params[:name1])
    $player_2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @name1 = $player_1
    @name2 = $player_2
    erb(:play)
  end

  get '/attack' do
    @name1 = $player_1
    @name2 = $player_2
    Game.new.attack(@name2)
    erb(:attack)
  end
  run if app_file == $PROGRAM_NAME
end
