require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    "The home page."
  end
  
  get '/reversename/:name' do 
    params[:name].reverse
  end 
  
  get '/square/:number' do 
    square = params[:number].to_i ** 2
    "#{square}"
  end 
  
  get '/say/:number/:phrase' do 
    params[:phrase] * params[:number].to_i
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params.values.join(" ")}."
  end 
  
  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    add      = num1 + num2
    subtract = num1 - num2
    multiply = num1 * num2
    divide   = num1 / num2
    if params[:operation] == "add" 
        "#{add}"
    elsif params[:operation] == "subtract"
        "#{subtract}"
    elsif params[:operation] == "multiply"
        "#{multiply}"
    elsif params[:operation] == "divide"
        "#{divide}"
    end
  end 

end



  
    