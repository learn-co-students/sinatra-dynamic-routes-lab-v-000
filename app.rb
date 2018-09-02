require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # Accepts a name and renders the name backwards.
  get '/reversename/:name' do
    @name= params[:name]
    @reversename = @name.reverse
    "#{@reversename}"
  end

  # Accepts a number and returns the square of that number
  get '/square/:number' do
    @num= params[:number].to_i
    "#{@num*@num}"
  end

  # Accepts a number and a phrase and returns that phrase in a string the number of times given
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @message = ""
    @num.times do
      @message << @phrase + " "
    end
    "#{@message}"
  end

  # Accepts five words and returns a string containing all five words
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @message = params[:word1] + " " + params[:word2]+ " " + params[:word3]+ " " + params[:word4]+ " " + params[:word5] +"."
  "#{@message}"
  end

  # Accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided.
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation]=="add"
      "#{num1 + num2}"
    elsif params[:operation]=="subtract"
      "#{num1 - num2}"
    elsif params[:operation]=="multiply"
      "#{num1 * num2}"
    elsif params[:operation]=="divide"
      "#{num1 / num2}"
    else
      "Operation does not exist"
    end
  end
end
