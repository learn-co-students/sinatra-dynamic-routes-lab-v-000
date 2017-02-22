require_relative 'config/environment'
require "pry"

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number]
    (num.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

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
      answer = "Unable to perform this operation"
    end
    answer.to_s
  end

end


# + Create a dynamic route at `get '/reversename/:name'` that accepts a name and renders the name backwards.

# + Create a dynamic route at `get '/square/:number'` that accepts a number and returns the square of that number.

# + Create a dynamic route at `get '/say/:number/:phrase'` that accepts a number and a phrase and returns that phrase in a string the number of times given.

# + Create a dynamic route at `get '/say/:word1/:word2/:word3/:word4/:word5'` that accepts six words and returns a string with the formatted as a sentence.

# + Create a dynamic route at `get '/:operation/:number1/:number2'` that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided.
