require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


get '/reversename/:name' do
  @name = params[:name]
  @name.reverse! 
  "#{@name}"
  end
  
  get '/square/:number' do
    number = params[:number].to_i
    sum = number*number 
    "#{sum}"
  end
  
  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

 get '/:operation/:number1/:number2' do
   @number1 = params[:number1].to_i
   @number2 = params[:number2].to_i
   
   case params[:operation]
   
      when 'add'
     (@number1 + @number2).to_s 
     
      when 'subtract'
     (@number1 - @number2).to_s 
     
     when 'multiply'
     (@number1 * @number2).to_s 
     
     when 'divide'
     (@number1 / @number2).to_s 
     
   else 
     "error"
     
   end 
  end 
  
end