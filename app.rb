require 'sinatra/base'
require './lib/space'

class MakersBnb < Sinatra::Base

  get '/' do
    'homepage'
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
