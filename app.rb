require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    name = params[:name]
    name.reverse 
  end 

  get '/square/:number' do 
    num = params[:number].to_i
    result = (num ** 2).to_s 
    result 
  end 

  get '/say/:number/:phrase' do 
    n = params[:number].to_i 
    phrase = params[:phrase] 
    result = phrase * n 
    result   
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}." 
  end 

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i 
    num2 = params[:number2].to_i 
    operation = params[:operation] 
    if operation == "add"
      result = (num1 + num2).to_s 
    elsif operation == "subtract"
      result = (num1 - num2).to_s 
    elsif operation == "multiply"
      result = (num1 * num2).to_s 
    else operation == "divide"
      result = (num1 / num2).to_s 
    end
  result 
  end 



end