require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i**2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @times = params[:number].to_i
    @phrase = "#{params[:phrase]}\n"
    @phrase*@times
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{params[:word1]}", "#{params[:word2]}", "#{params[:word3]}", "#{params[:word4]}", "#{params[:word5]}."
    @sentence.join(" ")
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    x = params[:operation]

    if x == "add"
      ans = num1 + num2
    elsif x == "subtract"
      ans = num1 - num2
    elsif x == "multiply"
      ans = num1 * num2
    elsif x == "divide"
      ans = num1/num2
    else
      "Enter correct operation command."
    end
    ans.to_s
  end

end
