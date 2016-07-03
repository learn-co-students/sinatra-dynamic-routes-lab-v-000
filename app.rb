require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number_squared = (params[:number].to_i)**2
    number_squared.to_s
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase]}\n" * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words_concatenated = params["captures"].join(' ')
    "say #{words_concatenated}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    result.to_s = case operation
    when add
      num1 + num2
    when subtract
      num1 - num2
    when multiply
      num1 * num2
    when divide
      num1 / num2
    else
      "Please choose from the following operations: 'add', 'subtract', 'multiply', or 'divide'."
    end
  end

end
