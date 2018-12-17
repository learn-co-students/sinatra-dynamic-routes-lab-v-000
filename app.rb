require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  # Accepts a name and renders the name backwards
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  # Accepts a number and returns the square of that number
  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num * @num}"
  end
  
  # Accepts a number and a phrase and returns that phrase in a string the number of times given
  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @say = params[:phrase]
    @arr = []
    @num.times do |i|
      @arr << @say
    end
    "#{@arr}"
  end
  
  # Accepts five words and returns a string containing all five words
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @combine = @word1 + " " + @word2 + " "  + @word3 + " "  + @word4 + " "  + @word5 + "."
    "#{@combine}"
  end
  
  # Accepts an operation and performs the operation on the two numbers provided
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    elsif @operation == "divide"
      "#{@number1 / @number2}"
    end
  end
  
end