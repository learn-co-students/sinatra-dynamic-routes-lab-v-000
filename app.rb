require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.reverse!}!"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    output = ""
    @number.times do
      output += "#{@phrase}\n"
    end
    "#{output}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    case @operation
    when "add"
      @operation = "+"
    when "subtract"
      @operation = "-"
    when "multiply"
      @operation = "*"
    when "divide"
      @operation = "/"
    else
      @operation
    end
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    result = @num1.send(@operation, @num2)
    "#{result}"
  end

end
