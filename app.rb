require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num*num}"
  end

  get '/say/:number/:phrase' do
    str = ""
    params[:number].to_i.times do
      str += params[:phrase]
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = params.map {|k, v| v}.join(' ')
    str += '.'
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if op == "add"
      "#{num1 + num2}"
    elsif op == "subtract"
      "#{num1 - num2}"
    elsif op == "multiply"
      "#{num1 * num2}"
    elsif op == "divide"
      "#{num1/num2}"
    end
  end
end
