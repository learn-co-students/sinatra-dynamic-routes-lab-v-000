require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @square = params[:number].to_i ** 2 
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @num
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    @s = "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}"
    "#{@s}."
  end
  
  get '/:operation/:number1/:number2' do
    @operation = "#{params[:operation]}"
    
    if @operation == "add"
      @x = params[:number1].to_i + params[:number2].to_i
      "#{@x}"
    elsif @operation == "subtract"
      @x = params[:number1].to_i - params[:number2].to_i
      "#{@x}"
    elsif @operation == "multiply"
      @x = params[:number1].to_i * params[:number2].to_i
      "#{@x}"
    else
      @operation == "divide"
      @x = params[:number1].to_i / params[:number2].to_i
      "#{@x}"
    end
  end
  
  
  
end