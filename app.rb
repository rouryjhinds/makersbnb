require 'sinatra/base'
require './lib/space'

class MakersBnb < Sinatra::Base
  enable :sessions

  get '/' do
    'homepage'
  end

  get '/space/:id/availability' do
    # @space = Space.find(id: params[:id])
    # @start_date
    # @end_date
    erb :'availability'
  end

  post '/spaces' do
    # Booking.create(start_date: params[:start_date], start_date: params[:end_date], )
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    erb :'spaces'
  end 

  get '/space' do
    @space = Space.all
    erb :'space/index'
  end

  post '/space' do
    Space.create(name: params[:name], description: params[:description], price: params[:price])
    redirect '/space'
  end

  get '/space/new' do
    erb :'space/new'
  end

  run! if app_file == $0
end
