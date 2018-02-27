require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name].reverse!
    "#{@reversename}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    "#{params[:phrase]}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params.values.join(" ")
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      "#{num1 + num2}"
    when 'subtract'
      "#{num1 - num2}"
    when 'multiply'
      "#{num1*num2}"
    when 'divide'
      "#{num1/num2}"
    end
  end
end
