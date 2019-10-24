require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @rev_name = params[:name].reverse
    "#{@rev_name}"
  end

  get "/square/:number" do
    @sq_num = params[:number].to_i**2

    "#{@sq_num}"
  end

  get '/say/:number/:phrase' do
    @count = 0
    @phrase = []
    while @count < params[:number].to_i  do
      @phrase << "#{params[:phrase]}"
      @count +=1
    end
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]+"."

  end

  get '/:operation/:number1/:number2' do
    opp = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

      if  opp == "add"
        @result =  num1 + num2
      elsif opp == "subtract"
        @result =  num1 - num2
      elsif opp == "multiply"
        @result =  num1 * num2
      elsif opp == "divide"
        @result =  num1 / num2
      end
    @result.to_s
    end
end
