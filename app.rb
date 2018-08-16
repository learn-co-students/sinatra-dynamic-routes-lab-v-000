require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name]
    "#{@reversed.reverse}"
  end

  get '/square/:number' do
    @sq = params[:number]
      (@sq.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == "add"
      "#{@num1 + @num2}"
    elsif @op == "subtract"
      "#{@num1 - @num2}"
    elsif @op == "multiply"
      "#{@num1 * @num2}"
    elsif @op == "divide"
      "#{@num1 / @num2}"
    end
  end


end
