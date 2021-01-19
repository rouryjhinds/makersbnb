require 'sinatra/base'

class MakersBnb < Sinatra::Base

  get '/' do
    'homepage'
  end

  get '/spaces/new' do
    @start_date
    @end_date
    erb :'new_spaces'
  end

  post '/my-spaces' do
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    erb :'my_spaces'
  end

  run! if app_file == $0
end