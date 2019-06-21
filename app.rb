require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
      @user_name = params[:name].reverse!
      "#{@user_name}"
    end

  get "/square/:number" do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get "/say/:number/:phrase" do
    answer = ''
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @number.times do |x|
     answer += @phrase
    end
    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    answer = ''
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    answer += @word1 + " "
    answer += @word2 + " "
    answer += @word3 + " "
    answer += @word4 + " "
    answer += @word5
    answer += "."
    answer
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    answer = "Dont know that function"
    case params[:operation]
    when "add"
      answer = (num1 + num2).to_s
    when "subtract"
      answer = (num1 - num2).to_s
    when "divide"
      answer = (num1 / num2).to_s
    when "multiply"
      answer = (num1 * num2).to_s
    end
  end
end
