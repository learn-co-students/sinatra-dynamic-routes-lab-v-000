require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name].reverse
    "#{name}"
  end

  get '/square/:number'do
    square = params[:number].to_i * params[:number].to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase] * params[:number].to_i
    "#{phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params[:word1] + " " + params[:word2] + " " + params[:word3] +" " + params[:word4] +" "+ params[:word5] + "."
    "#{words}"
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    a = params[:number1].to_i
    b = params[:number2].to_i

    if op == "add"
      response = a + b
    elsif op == "subtract"
      response = b - a
    elsif op == "multiply"
      response = a * b
    elsif op == "divide"
      response = a / b
    else
      response = "Can't perform operation"
    end
      response.to_s
  end


end
