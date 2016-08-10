require_relative 'config/environment'
require "pry"

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
    erb :square
  end

  get '/say/:number/:phrase' do
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :saysentence
  end

  get '/:operation/:number1/:number2' do
    erb :operation
  end
  
end