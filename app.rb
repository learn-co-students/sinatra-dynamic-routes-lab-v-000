require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    # status 200
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    status 200
    num = params[:number].to_i
    "#{num * num}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = " "
    num.times do
      phrase += params[:phrase]
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    params.collect {|k,v| params[k]}.join(" ")+ "."
  end

  get '/:operation/:number1/:number2' do
    status 200
    operation = params[:operation].downcase
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operation
    when 'add'
      "#{num1 + num2}"
    when 'subtract'
      "#{num1 - num2}"
    when 'multiply'
      "#{num1 * num2}"
    when 'divide'
      "#{num1 / num2}"
    end
  end

end  #  End of Class
