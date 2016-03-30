require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @num = params[:number]
    @sqr = @num.to_i*@num.to_i
    "#{@sqr}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phr = params[:phrase]
    (1..@number.to_i).collect do
    "#{@phr}\n"
    end
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
    @number1 = params[:number1]
    @number2 = params[:number2]
    case params[:operation] 
    when 'add' 
      "#{@number1.to_i+@number2.to_i}"
    
    when 'subtract'
      "#{@number1.to_i-@number2.to_i}"
    
    when 'multiply'
      "#{@number1.to_i*@number2.to_i}"
      
    when 'divide'
      "#{@number1.to_i/@number2.to_i}"
    end
  end
  
end