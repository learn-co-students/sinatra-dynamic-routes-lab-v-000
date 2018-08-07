require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  #  accepts a name and renders the name backwards
  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  # accepts a number and returns the square of that number
  get '/square/:number' do
    @answer = params[:number].to_i**2
    "#{@answer}"
  end

  # accepts a number and a phrase and returns that phrase in a string the number of times given
  get '/say/:number/:phrase' do
    #binding.pry
    answer = ''
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do |i|
      answer += "#{@phrase}\n"
    end
    #binding.pry
    answer
  end

  # accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5)
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  #  accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided.
  # For example, going to /add/1/2 should render 3
  get '/:operation/:number1/:number2' do
        operation = params[:operation]
        number1 = params[:number1].to_i
        number2 = params[:number2].to_i
        if operation == "add"
          answer = number1 + number2
        elsif operation == "subtract"
          answer = number1 - number2
        elsif operation == "multiply"
          answer = number1 * number2
        elsif operation == "divide"
          answer = number1 / number2
        else
          answer = "Can not perform this operation"
        end
        answer.to_s
  end

end
