require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse!
  end

  get '/square/:number' do
    @number = params[:number].to_i**2
    @number.to_s
  end

  get'/say/:number/:phrase' do
    @result = params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params[:word1] +" "+ params[:word2] +" "+ params[:word3] +" "+ params[:word4] + " "+params[:word5]+"."
    # @words
  end

  get '/:operation/:number1/:number2' do


  end
end
