require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    reverse_name = params[:name].reverse
    "#{reverse_name}"
  end

  get "/square/:number" do
    square_number = params[:number].to_i * params[:number].to_i
    "#{square_number}"
  end

  get "/say/:number/:phrase" do
    phrase = params[:phrase]
    repeat = params[:number].to_i
    "#{phrase}\n" * repeat
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if operation == "add"
      result = num1 + num2
      "#{result}"
    elsif operation == "subtract"
      result = num1 - num2
      "#{result}"
    elsif operation == "multiply"
      result = num1 * num2
      "#{result}"
    elsif operation == "divide"
      result = num1 / num2
      "#{result}"
    end
  end
end