require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i**2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @times = params[:number].to_i
    @phrase = params[:phrase]
    @phrase*@times
    # end
  end

end
