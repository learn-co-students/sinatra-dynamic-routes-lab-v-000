require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
  end

  get "/square/:number" do
     num = params[:number].to_i
     @number = num * num
     @number.to_s
  end

  get "/say/:number/:phrase" do
    phrase = params[:phrase]
    num = params[:number].to_i
    @phrase = phrase * num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    @say = "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
     num1 = params[:number1].to_i
     num2 = params[:number2].to_i

    if operation == "add"
      @addition = (num1 + num2).to_s
    elsif operation == "subtract"
      @subtract = (num1 - num2).to_s
    elsif operation == "multiply"
      @multiply = (num1 * num2).to_s
    elsif operation == "divide"
      @divide = (num1/num2).to_s
    end
  end

end
