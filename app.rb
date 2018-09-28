require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    name_reverse = @name.reverse
    name_reverse
  end

  get "/square/:number" do
    num = params[:number].to_i
    @square = num * num
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * num

  end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      #binding.pry
      @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
    end

    get "/:operation/:number1/:number2" do
      operation = params[:operation]
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
      #binding.pry
      if operation == "add"
        answer = num1 + num2
      elsif operation == "subtract"
        answer = num1 - num2
      elsif operation == "multiply"
        answer = num1 * num2
      elsif operation == "divide"
        answer = num1/num2
      end
      answer.to_s
    end
      # Write your code here!

end
