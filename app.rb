require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @user_name = params[:name] 
    "#{@user_name.reverse}" 
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end 

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    final_string = " "
    @number.times do 
      final_string += "#{@phrase}\n" 
    end 
    final_string 
    #binding.pry
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    phrase = "" 
    
    phrase = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    phrase 
  end 
  
  get '/:operation/:number1/:number2' do 
    computation = 0
    case params[:operation]
    when "add" 
      computation = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      computation = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      computation = params[:number1].to_i * params[:number2].to_i
    when "divide"
      computation = params[:number1].to_i / params[:number2].to_i
    end
    
    computation.to_s 
  end 

end