require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    reversed_name = params[:name].reverse
  end 

  get '/square/:number' do
    number = params[:number].to_i
    squared = (number ** 2).to_s
  end 

  get '/say/:number/:phrase' do 
    phrase = params[:phrase]
    times = params[:number].to_i
    repeated = (phrase * times).to_s
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    five = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 
  
  get "/:operation/:number1/:number2" do 
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    if operation == "add"
      sum = (num1 + num2).to_s
    elsif operation == "subtract"
      difference = (num1 - num2).to_s
    elsif operation == "multiply"
      product = (num1 * num2).to_s
    else operation == "divide"
      quotient = (num1/num2).to_s
    end 
      
  end 
  
end