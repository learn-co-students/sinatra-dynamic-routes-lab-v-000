require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number]
    num = @num.to_i
    "#{num*num}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number]
    @phr = params[:phrase]
    num = @num.to_i
    str = ""
    counter = 0
    until counter == num
      str << @phr
      counter += 1
    end
    "#{str}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    dis= ""

    dis << @word1 + " "
    dis << @word2 + " "
    dis << @word3 + " "
    dis << @word4 + " "
    dis << @word5 + "."

    "#{dis}"
  end

  get "/:operation/:number1/:number2" do
    @oper = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]

    num1 = @num1.to_i
    num2 = @num2.to_i

    case @oper
      when "add"
        "#{num1 + num2}"
      when "subtract"
        "#{num1 - num2}"
      when "multiply"
        "#{num1 * num2}"
      when "divide"
        "#{num1/num2}"
      else
        "Yeah, I can't do that quite yet."
    end

  end

end
