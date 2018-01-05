require_relative 'config/environment'

# require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversename = params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do
    # binding.pry
    @squared = params[:number].to_i**2

    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    erb :say_words
  end

  get '/:operation/:number1/:number2' do
    # binding.pry
    # %2A
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    erb :operation
  end

end
