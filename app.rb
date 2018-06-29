require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @square = params[:number].to_i**2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    ary = []
    params[:number].to_i.times do
      ary << params[:phrase]
    end
    ary.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/:operation/:number1/:number2' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

end
