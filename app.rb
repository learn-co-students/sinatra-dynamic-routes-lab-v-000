require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  # Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the number of times given.
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end
  # Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5}."
  end
  # Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation.downcase == "add"
      "#{@number1 + @number2}"
    elsif @operation.downcase == "subtract"
      "#{@number1 - @number2}"
    elsif @operation.downcase == "multiply"
      "#{@number1 * @number2}"
    elsif @operation.downcase == "divide"
      "#{@number1 / @number2}"
    else
      "Unknown operation"
    end
  end

end
