require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    #binding.pry
    "#{number * number}"
  end

  get '/say/:number/:phrase' do
    times = params[:number].to_i
    phrase = params[:phrase]
    phrase * times
    #binding.pry
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i

  result = 'Unable to perform this operation'
    case params[:operation]
    when 'add'
      result = (number1 + number2).to_s
    when 'subtract'
      result = (number1 - number2).to_s
    when 'multiply'
      result = (number1 * number2).to_s
    when 'divide'
      result = (number1 / number2).to_s
    end
  end
end
