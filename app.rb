require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse!
    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s

    output = ""
    @number.times {output << @phrase + " "}
    output
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation].to_s
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      num = @number1 + @number2
    elsif @operation == "subtract"
      num = @number1 - @number2
    elsif @operation == "multiply"
      num = @number1*@number2
    elsif @operation == "divide"
      num = @number1/@number2
    end
    "#{num}"




  end

end
