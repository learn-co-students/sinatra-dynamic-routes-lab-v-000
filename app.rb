require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @n = params[:number]
    "#{@n.to_i**2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    str = ""
    @number.to_i.times {str << "#{@phrase}\n"}
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1, @word2, @word3, @word4, @word5 = params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]

    case @op
    when "add"
      "#{@num1.to_i + @num2.to_i}"
    when "subtract"
      "#{@num1.to_i - @num2.to_i}"
    when "multiply"
      "#{@num1.to_i * @num2.to_i}"
    when "divide"
      if @num2.to_i == 0
        "Can't divide by zero"
      else @num1.to_i > @num2.to_i
      "#{@num1.to_i / @num2.to_i}" + " remainder #{@num1.to_i % @num2.to_i}"
      end
    else
      "sorry I don't recognize that operator, must use 'add', 'subtract', 'multiply', or 'divide'"
    end

  end
end
