require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    num = num * num
    num.to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    var = ""
    num.times do
      var << params[:phrase]
    end
    var
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == 'add'
      num = num1 + num2
    elsif params[:operation] == 'subtract'
      num = num1 - num2
    elsif params[:operation] == 'multiply'
      num = num1 * num2
    elsif params[:operation] == 'divide'
      num = num1 / num2
    else
      nil
    end
    num.to_s
  end

end
