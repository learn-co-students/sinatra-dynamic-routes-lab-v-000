require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    @output = @number.to_i**2
    "#{@output}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @number_int = @number.to_i
    "#{@phrase*@number_int}"
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
    operation = params[:operation]
    number1 = params[:number1]
    number2 = params[:number2]
    # if statment saying if @operations = 'add'
    # do 'this'
    # elsif
    if operation == 'add'
      answer = number1.to_i + number2.to_i
    elsif operation == 'subtract'
      answer = number1.to_i - number2.to_i
    elsif operation == 'multiply'
      answer = number1.to_i * number2.to_i
    elsif operation == 'divide'
      answer = number1.to_i/number2.to_i
    else
      answer = "Unable to perform operation"
    end
    answer.to_s
  end


end
