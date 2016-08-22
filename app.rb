require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Hello World"
  end

  get '/reversename/:name' do
    reversed_name = params[:name].reverse
    "#{reversed_name}"
  end

  get '/square/:number' do
    squared = params[:number].to_i * params[:number].to_i
    "#{squared}"
  end

end