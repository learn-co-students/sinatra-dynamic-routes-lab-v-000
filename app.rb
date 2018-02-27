require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "Dynamic Routes Lab"
  end

  get '/reversename/:name' do

    erb :reversename
  end

  get '/square/:number' do
    @number = params[:number].to_i

    erb :square
  end

  get '/say/:number/:phrase' do

    erb :saynumberphrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    erb :saysentence
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    erb :operation
  end

end
