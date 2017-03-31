require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]

    erb :reversename
  end

  get '/square/:number' do
    @number = params[:number].to_i

    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    @words << params[:word1]
    @words << params[:word2]
    @words << params[:word3]
    @words << params[:word4]
    @words << params[:word5]

    erb :say_words
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    erb :operation
  end

end
