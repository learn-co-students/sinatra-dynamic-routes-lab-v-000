require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    result = ""
    num.times do
      result += (params[:phrase] + "\n")
    end
    "#{result}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    result = params[:word1] + " " +
    params[:word2] + " " +
    params[:word3] + " " +
    params[:word4] + " " +
    params[:word5] + "."

    "#{result}"
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      "#{num1 + num2}"
    when "subtract"
      "#{num1 - num2}"
    when "multiply"
      "#{num1 * num2}"
    when "divide"
      "#{num1 / num2}"
    end
  end
end
