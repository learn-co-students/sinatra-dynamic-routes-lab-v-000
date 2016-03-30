require_relative 'config/environment'

class App < Sinatra::Base

  #reverses name
  get '/reversename/:name' do
    params[:name].reverse
  end

  #gets string, converts to integer, exponent multiply, and returns as string
  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  #accepts a number and a phrase and returns that phrase in a string the number of times given.
  get '/say/:number/:phrase' do
    array = []
    params[:number].to_i.times do
      array << params[:phrase]
    end
    array.join("\n")
  end

  #accepts a number and a phrase and returns that phrase in a string the number of times given.
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  #accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided.
  get '/:operation/:number1/:number2' do
    operation = params[:operation].downcase
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    total = 0

    if  operation == "add"
      total = num1 + num2
    elsif operation == "subtract"
      total = num1 - num2
    elsif operation == "multiply"
      total = num1 * num2
    elsif operation == "divide"
      total = num1 / num2
    end

    total.to_s
  end
end