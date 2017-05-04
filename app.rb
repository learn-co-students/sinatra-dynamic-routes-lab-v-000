require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] + "\n"
    @number = params[:number].to_i
    str = ""
    @number.times{str << @phrase }
    str

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = ""
    params.each_value{|value| str << (value + ' ') if value.kind_of? String }
    str.strip + '.'
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    #binding.pry
    case operation
    when "add","sum","plus"
      (num1 + num2).to_s
    when "subtract", "minus"
      (num1 - num2).to_s
    when "multiply","times","x"
      (num1 * num2).to_s
    when "divide"
      (num1/num2).to_s
    else
      "Unknown operation"
    end
  end
end
