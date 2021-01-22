require 'sinatra/base'
require './lib/space'
require './lib/booking'

class MakersBnb < Sinatra::Base
  enable :sessions

  get '/' do
    'homepage'
  end

  get '/space/:id/availability' do
    p @space = Space.find(id: params[:id])
    # @start_date
    # @end_date
    erb :'availability'
  end

  post '/spaces' do
    p Booking.create(start_date: params[:start_date], end_date: params[:end_date], spaces_id: params[:spaces_id])
    redirect '/space'
  end 

  get '/space' do
    @space = Space.all
    @booking = Booking.all
    erb :'space/index'
  end

  post '/space' do
    Space.create(name: params[:name], description: params[:description], price: params[:price])
    redirect '/space'
  end

  get '/space/new' do
    erb :'space/new'
  end

  get '/booking' do
    erb :'bookings/index'
  end
  
  get '/booking/availability' do
    @space = Space.all
    @booking_date = params[:date]
    erb :'bookings/availability'
  end
  
  get '/booking/confirmation' do
    @booking_id = params[:id]
    erb :'bookings/confirmation'
  end

  run! if app_file == $0
end

