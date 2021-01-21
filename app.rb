require 'sinatra/base'

class MakersBnb < Sinatra::Base
  enable :sessions

  get '/' do
    'homepage'
  end

  get '/spaces/availability' do
    @start_date
    @end_date
    erb :'availability'
  end

  post '/spaces' do
    # Booking.create(start_date: params[:start_date], start_date: params[:end_date], )
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    erb :'spaces'
  end

  run! if app_file == $0
end