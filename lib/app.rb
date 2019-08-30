require 'sinatra'
set :public_folder, 'public'
class Chitter < Sinatra::Base
  get '/' do
    erb :index
  end
end
