require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @eman = @name.reverse
    "#{@eman}"
  end

  get '/square/:number' do
    @number = params[:number]
    @square = @number.to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@word}"
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == "add"
      @sum = @number1 + @number2
      "#{@sum}"
    elsif @operation == "subtract"
      @difference = @number1 - @number2
      "#{@difference}"
    elsif @operation == "multiply"
      @product = @number1 * @number2
      "#{@product}"
    elsif @operation == "divide"
      @quotient = @number1 / @number2
      "#{@quotient}"
    end
  end
end
