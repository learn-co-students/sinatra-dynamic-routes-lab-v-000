require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    name.reverse!
  end

  get '/square/:number' do
    num = params[:number].to_i
    square = num * num
    square.to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    return phrase * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    string = "#{word1} #{word2} #{word3} #{word4} #{word5}."
    string
  end

  get '/:operation/:number1/:number2' do #use conditionals for each operator
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operator == "add"
      answer = num1 + num2
    elsif operator == "subtract"
      answer = num1 - num2
    elsif operator == "multiply"
      answer = num1 * num2
    else operator == "divide"
      answer = num1 / num2
    end
    answer.to_s
  end
end
