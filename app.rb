require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    new_name = @name.reverse
    "#{new_name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    val = @number * @number
    "#{val}"
  end

  get "/say/:number/:phrase" do
    total_phrase = ""
    @phrase = params[:phrase]
    @num = params[:number].to_i
    @num.times do
      total_phrase += "#{@phrase}\n"
    end
    total_phrase
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
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
    when "add"
      val = @num1 + @num2
      "#{val}"
    when "subtract"
      val = @num1 - @num2
      "#{val}"
    when "divide"
      val = @num1 / @num2
      "#{val}"
    when "multiply"
      val = @num1 * @num2
      "#{val}"
    else
      "Wrong operation"
    end
  end
end
