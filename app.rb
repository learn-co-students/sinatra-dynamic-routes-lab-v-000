require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    result = ''

    params[:number].to_i.times do
      result += params[:phrase]
    end

    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.values.join(" ") << "."
  end

  get '/:operation/:number1/:number2' do
    @arr = [params[:number1].to_i, params[:number2].to_i]
    @op = params[:operation]

    case @op
      when "add"
        "#{@arr.reduce(:+)}"
      when "subtract"
        "#{@arr.reduce(:-)}"
      when "multiply"
        "#{@arr.reduce(:*)}"
      when "divide"
        "#{@arr.reduce(:/)}"
    end

  end
  
end
