require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    square = params[:number].to_i**2
    square.to_s
  end

  get '/say/:number/:phrase' do
    array = []

    params[:number].to_i.times do
      array << params[:phrase]
    end
    array.join(", ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    array = []

    array << params[:word1]
    array << params[:word2]
    array << params[:word3]
    array << params[:word4]
    array << params[:word5]
    array
    array.join(" ") + '.'
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      addition = params[:number1].to_i + params[:number2].to_i
      addition.to_s
    when "subtract"
      subtraction = params[:number1].to_i - params[:number2].to_i
      subtraction.to_s
    when "multiply"
      multiplication = params[:number1].to_i * params[:number2].to_i
      multiplication.to_s
    when "divide"
      division = params[:number1].to_i / params[:number2].to_i
      division.to_s
    end
  end

end
