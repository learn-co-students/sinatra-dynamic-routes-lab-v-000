require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse!
  end
  get '/square/:number' do
    num_squared = params[:number].to_i ** 2
    num_squared.to_s
  end
  get '/say/:number/:phrase' do
    erb :say
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1=params[:word1]
    word2=params[:word2]
    word3=params[:word3]
    word4=params[:word4]
    word5=params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end
  get '/:operation/:number/:number2' do
    num1 = params[:number].to_i
    num2 = params[:number2].to_i
    params[:operation].downcase!

    if params[:operation] == 'add'
      "#{num1 + num2}"
    elsif params[:operation] == 'subtract'
      "#{num1 - num2}" || "#{num2 - num1}"
    elsif params[:operation] == 'multiply'
      "#{num1 * num2}"
    elsif params[:operation] == 'divide'
      "#{num1 / num2}" || "#{num2 / num1}"
    else params[:operation].to_i != 0
      "Type add, subtract, multiply, or divide please"
    end

  end

end
