require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    string = ""
    @number.to_i.times do
      string += "#{@phrase}\n"
    end
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1}" + " #{@word2}" + " #{@word3}" + " #{@word4}" + " #{@word5}" + "."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    string = ""

    case params[:operation]
      when "add"
        string += "#{@number1.to_i + @number2.to_i}"
      when "subtract"
        string += "#{@number1.to_i - @number2.to_i}"
      when "multiply"
        string += "#{@number1.to_i * @number2.to_i}"
      when "divide"
        string += "#{@number1.to_i / @number2.to_i}"
      else
    end
    string
  end
end
