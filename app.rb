require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reverse
  end

  get "/square/:number" do
    @square_num = params[:number].to_i**2
    @square_num.to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @sentence = params[:phrase]
    @sentence * @number
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
    @operand = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operand == 'add'
      (@num1 + @num2).to_s
    elsif @operand == 'subtract'
      (@num1 - @num2).to_s
    elsif @operand == 'multiply'
      (@num1 * @num2).to_s
    elsif @operand == 'divide'
      (@num1 / @num2).to_s
    end
  end

end