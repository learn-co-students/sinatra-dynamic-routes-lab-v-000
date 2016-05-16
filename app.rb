require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number**2}"
  end

  get '/say/:number/:phrase' do
    #binding.pry
    number = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase}\n"*number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1}\s#{word2}\s#{word3}\s#{word4}\s#{word5}."
  end

  get '/:operation/:number1/:number2' do
    #binding.pry
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    #binding.pry
    if params[:operation] == "add"
      result = number1+number2
    elsif params[:operation] == "subtract"
      result = number1-number2
    elsif params[:operation] == "multiply"
      result = number1*number2
    elsif params[:operation] == "divide"
      result = number1/number2
    end
    result.to_s     
  end
end