require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get '/square/:number' do
    @product = params[:number].to_i * params[:number].to_i
    "#{@product}"
  end
  
  get '/say/:number/:phrase' do
    str = ''
    @num = params[:number].to_i
    @phrase = params[:phrase]
      @num.times do
      str += @phrase 
    end
    str
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
    @operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    result = ""
    
    case @operation
    when 'add'
      result = (num1 + num2).to_s
    when 'subtract'
      result = (num1 - num2).to_s
    when 'multiply'
      result = (num1 * num2).to_s
    when 'divide'
      result = (num1 / num2).to_s
    end
  end
    
end