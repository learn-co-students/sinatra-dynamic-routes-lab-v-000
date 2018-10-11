require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    @number.to_s 
    "#{@number}"
  end  
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = Array.new(@number, params[:phrase]).join(' ')
    "#{@phrase}"
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(' ')
    "#{@words}."
  end  
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      @result = @number1 + @number2
    elsif @operation == "subtract"
      @result = @number1 - @number2
    elsif @operation == "multiply"
      @result = @number1 * @number2
    else @operation == "divide"
      @result = @number1 / @number2
    end
    @result.to_s
  end
end