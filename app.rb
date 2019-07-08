require 'sinatra/base'
require 'shotgun'

# set :session_secret, "Yo-yo"

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end

  run if app_file == $0
end
