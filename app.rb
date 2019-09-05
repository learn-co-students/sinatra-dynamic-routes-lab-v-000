require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse!
  end

  get '/square/:number' do
     number = params[:number].to_i
    answer = number * number
    answer.to_s
  end

  get '/say/:number/:phrase' do
    count = params[:number].to_i
    array = []
    count.times do
      array << params[:phrase]
    end
    array.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    array = []
    params[:word5] += "."
    params.each do |key, value|
      array << value
    end
    array.join(" ")
  end

  get '/:operation/:number1/:number2' do
    number_1 = params[:number1].to_i
    number_2 = params[:number2].to_i
    case params[:operation]
    when "add"
      (number_1 + number_2).to_s
    when "subtract"
      (number_1 - number_2).to_s
    when "multiply"
      (number_1 * number_2).to_s
    when "divide"
      (number_1 / number_2).to_s
    end
  end

end
