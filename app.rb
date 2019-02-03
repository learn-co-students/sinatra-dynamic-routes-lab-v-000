require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    phrase = ""
    @number.times  {phrase << @phrase + "\n"}
    phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}" + "."
  end
  
  get '/:operation/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @operation = params[:operation]
    case @operation
      when 'add'
        "#{@num1 + @num2}"
      when 'multiply'
        "#{@num1 * @num2}"
      when 'subtract'
        "#{@num1 - @num2}"
      when 'divide'
        "#{@num1 / @num2}"
    end
  end
end




