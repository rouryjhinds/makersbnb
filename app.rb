require 'sinatra/base'

class MakersBnb < Sinatra::base
  get '/' do
    'homepage'
  end

  run! if app_file == $0
end