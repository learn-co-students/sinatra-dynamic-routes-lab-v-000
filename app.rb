require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    reverse = @user_name.reverse
    reverse
  end

  get '/square/:number' do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    counter = @number.to_i

   
    @phrase = params[:phrase]
    @phrase<<"\n"


      return @phrase * @number.to_i
 
    
    
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
  end 

  get '/:operation/:num1/:num2' do
    @operation = params[:operation]
    @num1 = params[:num1]
    @num2 = params[:num2]
    if @operation == "add"
      sum = @num1.to_i + @num2.to_i
      "#{sum}"
    elsif @operation == "subtract"
      dif = @num1.to_i - @num2.to_i
      "#{dif}"
    elsif @operation == "multiply"
      product = @num1.to_i * @num2.to_i
      "#{product}"
    elsif @operation == "divide"
      fraction = @num1.to_i / @num2.to_i
      "#{fraction}"
    end
  end
end