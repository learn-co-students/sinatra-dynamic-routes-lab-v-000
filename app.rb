require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse!
  end
  
  get '/square/:num' do
    @num = params[:num].to_i
    result = @num*@num
    result.to_s
  end
  
  get '/say/:num/:phrase' do
    @num = params[:num].to_i
    @phrase = params[:phrase]
    @phrase * @num
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    arr = []
    arr << @word1 = params[:word1]
    arr << @word2 = params[:word2]
    arr << @word3 = params[:word3]
    arr << @word4 = params[:word4]
    arr << @word5 = params[:word5]
    new_arr = arr.join(" ")
    new_arr << "."
    # binding.pry
  end
  
  get '/:operation/:num1/:num2' do
    @operation = params[:operation]
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    if @operation == "add"
      result = @num1 + @num2
      result.to_s
    elsif @operation == "subtract"
      result = @num1 - @num2
      result.to_s
    elsif @operation == "multiply"
      result = @num1 * @num2
      result.to_s
    else result = @num1 / @num2
      result.to_s
    end
  end
  
end