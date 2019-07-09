require 'sinatra/base'
require 'shotgun'

# set :session_secret, "Yo-yo"

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end
  
  get '/test' do
    'Hello World!'
  end
  
  post '/names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    p params
    erb(:play)
  end

  run if app_file == $0
end
