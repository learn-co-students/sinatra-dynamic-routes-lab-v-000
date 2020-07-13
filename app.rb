require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name]
    @reversed_name.reverse!
    "#{@reversed_name}"
  end
  
  get '/square/:number' do
    @product = params[:number].to_i * params[:number].to_i
    "#{@product}"
  end
  
  get '/say/:number/:phrase' do
    string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      string += @phrase
    end
    string
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
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @product = 0
    if @operation == "add"
      @product = @number1 + @number2
    elsif @operation == "subtract"
      @product = @number1 - @number2
    elsif @operation == "multiply"
      @product = @number1 * @number2
    else
      @product = @number1 / @number2
    end
    "#{@product}"
  end
  
end