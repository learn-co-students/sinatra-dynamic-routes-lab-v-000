require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Hello World"
  end

  get '/reversename' do
    "Reverse that joint"
  end

  get '/square' do
    "Square that joint"
  end
  
end