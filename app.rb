require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]
    @number = @number.to_i
    @square = @number * @number
    "#{@square.to_s }"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    post = ""
    @number.times do
      post += "#{@phrase}\n"
    end
    post
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    post = "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end
  get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    operation = params[:operation]

    if operation == "add" then
      result =  number1 + number2
    elsif operation == "subtract" then
      result = number1 - number2
    elsif operation == "multiply" then
      result = number1 * number2
    elsif operation == "divide" then
      result = number1 / number2
    end
    result.to_s
  end
end
