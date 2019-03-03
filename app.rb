require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse!}"
  end

  get '/square/:number' do
    # return the number squared
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    # return the phrase number of times
    message = ""
    params[:number].to_i.times do
      message += "#{params[:phrase]} \n"
    end
    message
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]}" " " "#{params[:word2]}" " " "#{params[:word3]}" " " "#{params[:word4]}" " " "#{params[:word5]}" "."
  end

  get '/:operation/:number1/:number2' do
    # perform operation on both numbers and return the result
    operations = {
      "add" => :+,
      "subtract" => :-,
      "multiply" => :*,
      "divide" => :/
    }
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]
    "#{num1.send(operations[operation], num2)}"
  end
    
end
