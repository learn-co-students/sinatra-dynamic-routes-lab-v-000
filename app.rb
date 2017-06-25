require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    name_reverse = params[:name].reverse
    "#{name_reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    square_number = number * number
    "#{square_number}"
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase]
    num = params[:number].to_i
    "#{phrase}\n" * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_1
    op = params[:operation]
    "num1 #{op} num2"
  end

end
