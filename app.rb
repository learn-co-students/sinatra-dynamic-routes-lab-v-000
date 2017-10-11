require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @result = @phrase * @number
    "#{@result}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.values.join(" ") << (".")
    "#{@words}"
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i

      if operation == "add"
        @addition = (number1 + number2).to_s
      elsif  operation == "subtract"
        @subtract = (number1 - number2).to_s
      elsif  operation == "multiply"
        @multiply = (number1 * number2).to_s
      elsif  operation == "divide"
        @divide = (number1 / number2).to_s
      end
    end
  end
