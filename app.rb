require 'sinatra/base'

class MakersBnb < Sinatra::Base
  get '/' do
    'homepage'
  end

  run! if app_file == $0
end