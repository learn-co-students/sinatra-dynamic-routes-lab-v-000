require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "This is my root page"
  end

  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @square = (params[:number].to_i)**2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @n = params[:number].to_i
    counter = 0

    loop do
      "#{@phrase}"
      counter += 1
      break if counter == @n
    end

  end #get say

end
