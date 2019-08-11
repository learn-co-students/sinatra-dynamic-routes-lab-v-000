require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    name.reverse!
    name
  end
  # Write your code here!

  get '/square/:number' do
    number = params[:number].to_i
    squared_number = number * number
    squared_number.to_s
  end

  get '/say/:number/:phrase' do
    # binding.pry
    phrase = params[:phrase]
    number = params[:number].to_i
    phrase * number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    space = " "
    period = "."

    word1 + space + word2 + space + word3 + space + word4 + space + word5 + period
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]
    # binding.pry
    if operation == "add"
      result = num1 + num2
    elsif operation == "subtract"
      result = num1 - num2
    elsif operation == "multiply"
      result = num1 * num2
    else operation == "divide"
      result = num1 / num2
    end
    result.to_s
  end


end
