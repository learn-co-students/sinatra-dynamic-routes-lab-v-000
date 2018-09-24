require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @say = params[:phrase]
    @number = params[:number].to_i
      "#{@say}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      @add = @number2 + @number1
      "#{@add}"
    elsif @operation == "subtract"
      @subtract = @number2 - @number1
      "#{@subtract}"
    elsif @operation == "multiply"
      @multiply = @number1 * @number2
      "#{@multiply}"
    else @operation == "divide"
      @divide = @number1 / @number2
      "#{@divide}"
    end#
  end

end
