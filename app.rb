require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @user_name = params[:name]
    @user_name.reverse 
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i
    (@number**2).to_s 
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    @phrase * @number 
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
  end 
  
  get '/:operation/:number1/:number2' do 
    @number1 = params[:number1].to_i 
    @number2 = params[:number2].to_i 
    case params[:operation]
    when "add"
      "#{@number1 + @number2}"
    when "subtract"
      "#{@number1 - @number2}"
    when "multiply"
      "#{@number1 * @number2}"
    when "divide"
      "#{@number1 / @number2}"
    else
      "Invalid operation"
    end
  end 

end