require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
    erb :squarenumber
  end

  get '/say/:number/:phrase' do
    erb :numberphrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :saywords
  end

  get '/:operation/:number1/:number2' do
    erb :dosomemath
  end
end
