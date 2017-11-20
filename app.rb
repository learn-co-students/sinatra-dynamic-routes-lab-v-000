require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    backwards = params[:name]
    "#{backwards.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @squre = @number ** 2
      "#{@squre}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @multi = @phrase * @number
    "#{@multi}"

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
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation].include?("add")
      @add = @num1 + @num2
      "#{@add}"
    elsif params[:operation].include?("subtract")
      @subtract = @num2 - @num1
      "#{@subtract}"
    elsif params[:operation].include?("divide")
      @divide = @num1 / @num2
      "#{@divide}"
    else
     params[:operation].include?("multiply")
      @multiply = @num1 * @num2
      "#{@multiply}"
    end
  end


end
