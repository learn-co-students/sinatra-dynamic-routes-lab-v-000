require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @user_name = params[:name].reverse 
    "#{@user_name}"
  end 
  
  get '/square/:number' do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square.to_s}"
  end 
  
  get '/say/:number/:phrase' do 
    answer = ''
    
    params[:number].to_i.times do 
      answer += params[:phrase]
    end 
    
    answer
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 
  
  get '/:operation/:number1/:number2' do 
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    
    answer = "Unable to perform this function."
    
    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s 
    when 'multiply'
      answer = (number1 * number2).to_s 
    when 'divide'
      answer = (number1 / number2).to_s 
    end 
  end 
  
end