require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name].reverse!
    @reversename
  end

  get '/square/:number' do
    @square = (params[:number].to_f)**2
    @square.to_s
  end

  get 'say/:number/:phrase' do
    num = params[:number].to_f
    num.times {
      puts params[:phrase]
    }
  end

  get 'say/:word1/:word2/:word3/:word4/:word5' do


  end

  get '/:operation/:number1/:number2' do

  end
end
