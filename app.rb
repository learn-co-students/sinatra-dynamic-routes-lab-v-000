require_relative 'config/environment'

class App < Sinatra::Base

# Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.

  get '/reversename/:name' do
    params[:name].reverse
  end

#Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number. Note: Remember that values in params always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).

  get '/square/:number' do
    num = params[:number]
    (num.to_i**2).to_s
  end

#Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the number of times given.

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

#Create a dynamic route at get '/say/:word1https://learn.co/tracks/full-stack-web-development-v6/sinatra/forms/dynamic-routes-lab#/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

#Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.

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