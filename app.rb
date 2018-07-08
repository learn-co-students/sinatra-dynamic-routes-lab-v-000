require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    answer = " "

    @number.times do
      answer += @phrase
    end
    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    words = []

    words << params[:word1]
    words << params[:word2]
    words << params[:word3]
    words << params[:word4]
    words << params[:word5]

    words
    words.join(" ") + '.'
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      "#{@num1+@num2}"
    elsif @operation == "subtract"
      "#{@num1-@num2}"
    elsif @operation == "multiply"
      "#{@num1*@num2}"
    else @operation == "divide"
      "#{@num1/@num2}"
    end
  end


end
