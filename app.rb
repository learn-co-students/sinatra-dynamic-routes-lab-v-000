require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @sq = @num*@num
    "#{@sq.to_s}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase].split('%')
    @num = params[:number].to_i
    @array = []
    @num.times do
      @array << @phrase.join(' ')
    end
    "#{@array.join('. ')}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == 'add'
      @answer = @num1+@num2
    elsif @operation == 'subtract'
      @answer = @num1 - @num2
    elsif @operation == 'multiply'
      @answer = @num1 * @num2
    elsif @operation == 'divide'
      @answer = @num1 / @num2
    end
    "#{@answer.to_s}"
  end
end
