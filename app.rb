require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    @reversed_name = @user_name.reverse!
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num*@num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @say_phrase = "#{@phrase}" * @number
    "#{@say_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 } #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      @total = @number1 + @number2
    elsif @operation == "subtract"
      @total = @number1 - @number2
    elsif @operation == "multiply"
      @total = @number1*@number2
    else
      @total = @number1/@number2
    end
    "#{@total}"
  end
end
