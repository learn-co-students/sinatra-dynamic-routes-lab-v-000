require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    say = []
    @num.times{say << @phrase}
    say.join(" ")
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
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      @answer = @num1 + @num2
      "#{@answer}"
    elsif @operation == "subtract"
      @answer = @num1 - @num2
      "#{@answer}"
    elsif @operation == "multiply"
      @answer = @num1 * @num2
      "#{@answer}"
    elsif @operation == "divide"
      @answer = @num1 / @num2
      "#{@answer}"
    else
      @answer = "Unable to perform this operation"
    end
  end

end
