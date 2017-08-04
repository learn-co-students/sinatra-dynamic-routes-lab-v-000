require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    square = @number * @number
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @phrase = params[:phrase]
    response = @n.times.collect { @phrase }
    "#{response}"
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
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == "add"
      answer = @num1 + @num2
    elsif @op == "subtract"
      answer = @num1 - @num2
    elsif @op == "multiply"
      answer = @num1 * @num2
    elsif @op == "divide"
      answer = @num1 / @num2
    end
    "#{answer}"
  end

end
