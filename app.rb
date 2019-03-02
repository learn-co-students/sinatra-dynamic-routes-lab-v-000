require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end 
  
  get '/square/:number' do 
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end 

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    phrarray = []
    until phrarray.count == @number.to_i do 
      phrarray << @phrase
    end 
    return phrarray
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
    @operation = params[:operation]
    if @operation == "add"
      "#{@number1.to_i + @number2.to_i}"
    elsif @operation== 'subtract'
      "#{@number2.to_i - @number1.to_i}"
    elsif @operation == 'multiply'
      "#{@number1.to_i * @number2.to_i}"
    elsif @operation == 'divide'
      "#{@number1.to_i / @number2.to_i}"
    end
  end
 
  
end
