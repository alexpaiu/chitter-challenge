require 'sinatra'

class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/login' do
    erb :login
  end

  get '/signin' do
    erb :signin
  end
end
