require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "Hello Dynamic Routes Lab!"
  end
  
  get '/reversename/:name' do
    @name = params[:name]
    "Hello #{@name.reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    "The square of #{@number} is #{@number*@number}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    
    @str = ""
    
    "#{@number.times do 
       @str+=@phrase+" "
      end}"
      
      @str
    
    
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @arr =[]
    
    @arr << params[:word1]
    @arr << params[:word2]
    @arr << params[:word3]
    @arr << params[:word4]
    @arr << params[:word5]
    
    @str =""
    
    "#{5.times do |i|
      @str+=" "+@arr[i]
    end
    @str+="."  
    }"
    
    @str
    
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
    case @operation
    
    when "add"
      "#{@number1+@number2}"
    when "subtract"
      "#{@number1-@number2}"
    when "multiply"
      "#{@number1*@number2}"
    when "divide"
      "#{@number1/@number2}"
    else
      "Wrong spelling in operation or not support this operation"
    end
      
    
  end
  

end