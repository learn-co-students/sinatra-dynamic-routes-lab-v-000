require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    square = @num * @num
    "#{square}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @num.times do
        @string << "#{@phrase}"
    end
    @string
  #  binding.pry
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    word = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5
    "#{word}."
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == "add"
      result = @num1 + @num2
    elsif @op == "subtract"
      result = @num1 - @num2
    elsif @op == "multiply"
      result = @num1 * @num2
    elsif @op == "divide"
      result = @num1 / @num2
    end

    "#{result}"
    #result = @num1 @op @num2
    #{}"#{result}"
  end


end
