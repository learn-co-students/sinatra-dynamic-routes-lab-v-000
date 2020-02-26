require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse!}"
  end
  
  get '/square/:number' do
    answer = params[:number].to_i * params[:number].to_i
    return answer.to_s
  end
  
  get '/say/:number/:phrase' do
    counter = params[:number].to_i
    string = ''
    while counter > 0
      string = string + params[:phrase]
      counter = counter - 1
    end
    return string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ''
    string = string + params[:word1] + " "
    string = string + params[:word2] + " "
    string = string + params[:word3] + " "
    string = string + params[:word4] + " "
    string = string + params[:word5] + "."
  end
  
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    if operation == "multiply"
      answer = params[:number1].to_i * params[:number2].to_i
    elsif operation == "add"
      answer = params[:number1].to_i + params[:number2].to_i
    elsif operation == "subtract"
      answer = params[:number1].to_i - params[:number2].to_i
    else
      answer = params[:number1].to_i / params[:number2].to_i
    end
    return answer.to_s
  end
end