require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    @reversed = @user_name.reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_n_times = @phrase * @number
    "#{@phrase_n_times}"
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
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation].include?("add")
      @add = @num1 + @num2
      "#{@add}"
    elsif params[:operation].include?("subtract")
      @subtract = @num2 - @num1
      "#{@subtract}"
    elsif params[:operation].include?("multiply")
      @multiply = @num1 * @num2
      "#{@multiply}"
    else
      params[:operation].include?("divide")
      @divide = @num1 / @num2
      "#{@divide}"
    end
  end
end
