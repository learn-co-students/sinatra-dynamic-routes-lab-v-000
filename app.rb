require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  #accepts a name and renders the name backwards.
    @name = params[:name]
    reversename = @name.reverse
      "#{reversename}"
  end

  get '/square/:number' do
  #accepts a number and returns the square of that number.
  #Note: Remember that values in params always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).
    @number = params[:number]
    squared_number = @number.to_i * @number.to_i
      "#{squared_number}"
  end

  get '/say/:number/:phrase' do
  #accepts a number and a phrase and returns that phrase in a string the number of times given.
    @number = params[:number]
    @phrase = parmas[:phrase]
      "#{phrase} * #{number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  #accepts five words and returns a string with them formatted as a sentence.
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
      "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
  #accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided.
    @number1 = params[:number1]
    @number2 = params[:number2]
      if @operation == "add"
        addition = @number1.to_i + @number2.to_i
          "#{addition}"
        #"{([:number1] + [:number2])}"

      elsif @operation == "subtract"
        subtraction = @number1.to_i - @number2.to_i
          "#{subtraction}"
        #{}"{([:number1] - [:number2])}"

      elsif @operation == "multiply"
        multiplication = @number1.to_i * @number2.to_i
          "#{multiplication}"
        #{}"{([:number1] * [:number2])}"

      else
         @operation == "divide"
          division = @number1 / @number2
            "#{division}"
        #"{([:number1] / [:number2])}"
      end
  end
end
