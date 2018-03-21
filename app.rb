require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end 

  get '/square/:number' do 
    num = params[:number].to_i
    num_squared = num ** 2
    "#{num_squared}"
  end 

  get '/say/:number/:phrase' do 
    string = ''
    number = params[:number].to_i
    phrase = params[:phrase]
    number.times do string << "#{phrase}"
    end 
    string
  end 
 
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1 +" "+ word2 + " " + word3 + " " + word4+" "+ word5}."
  end 

  get "/:operation/:number1/:number2" do 
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operator 
    when "add"
      operator = :+
    when "subtract"
      operator = :-
    when "divide"
      operator = :/
    when "multiply"
      operator = :*
    end

    solution = num1.send(operator, num2)
    solution.to_s
  end 

end