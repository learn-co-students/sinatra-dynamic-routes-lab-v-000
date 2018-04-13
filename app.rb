require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    # binding.pry
    phrase_array = Array.new(@number, @phrase)
    "#{phrase_array.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'  do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2'  do

    @num1 = params[:number1].to_f
    @num2 = params[:number2].to_f
    if params[:operation] == "multiply"
      answer = (@num1) * (@num2)
    elsif
      params[:operation] == "add"
        answer = (@num1) + (@num2)
      elsif params[:operation] == "subtract"
        answer = (@num1) - (@num2)
      else params[:operation] == "divide"
        answer = (@num1) / (@num2)
    end
    "#{answer}"
  end

end
