require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end
  
  get '/square/:number' do
    num = params[:number].to_i
    "#{num**2}"
  end
  
  get '/say/:number/:phrase' do
    phrase = params[:phrase]
    num = params[:number].to_i
    string = ""
    num.times do 
      string += phrase
    end
    string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end
  
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]
    case op
    when 'add'
      result = num1 + num2
      result.to_s
    when 'subtract'
      result = num1 - num2
      result.to_s
    when 'multiply'
      result = num1 * num2
      result.to_s
    when 'divide'
      result = num1 / num2
      result.to_s
    end
  end
end