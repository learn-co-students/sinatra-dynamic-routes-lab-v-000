require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end 

  get '/square/:number' do
    @square_number = params[:number].to_i ** 2
    "#{@square_number}"
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
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i 

    if @operation == "add"
      @sum = @number1 + @number2
    elsif @operation == "subtract"
      @sum = @number1 - @number2
    elsif @operation == "multiply"
      @sum = @number1 * @number2
    elsif @operation == "divide"
      @sum = @number1 / @number2
    end 
    "#{@sum}"
  end 

end