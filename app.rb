require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/' do  
    "hello"
  end

  get '/reversename/:name' do  
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get '/say/:number/:phrase' do
    final_string = ""
    @number = params[:number].to_i
    @number.times do
      final_string += "#{params[:phrase]}"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    
    if @operation == "add"
      @result = @number1 + @number2
      "#{@result}"

    elsif @operation == "subtract"
      @result = @number1 - @number2
      "#{@result}"

    elsif @operation == "multiply"
    @result = @number1 * @number2
    "#{@result}"
    
    elsif @operation == "divide"
    @result = @number1 / @number2
    "#{@result}"  
    end  
  end
end