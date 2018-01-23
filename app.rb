require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number]
    (num.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    sentence = ""
    (params[:number].to_i).times do
      sentence += "#{params[:phrase]}\n"
    end
    sentence
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]

  if operation == "add"
    answer = num1 + num2
  elsif operation == "subtract"
    answer = num1 - num2
  elsif operation == "multiply"
    answer = num1 * num2
  elsif operation == "divide"
    answer = num1 / num2
  else
    answer = "That operation is not an option."
  end
    answer.to_s
  end

end
