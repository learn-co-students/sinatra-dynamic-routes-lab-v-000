require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @reversed_name = @user_name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared_number = @number * @number
    @squared_number.to_s
  end

  get '/say/:number/:phrase' do
    #response = ""
    #params[:number].to_i.times do
    #  response += params[:phrase]
    #end
    #response
    # CANNOT use @response; tests will fail; Sinatra uses @response for Sinatra's internal purposes 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    response = ""
    @number.times do
      response += "#{@phrase} "
    end
    response
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
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      @answer = @num1 + @num2
    elsif @operation == "subtract"
      @answer = @num1 - @num2
    elsif @operation == "multiply"
      @answer = @num1 * @num2
    elsif @operation == "divide"
      @answer = @num1 / @num2
    else
      "The operation was not understood, please try again"
    end
    @answer.to_s
  end
end
