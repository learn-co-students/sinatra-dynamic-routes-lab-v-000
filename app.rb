require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
 end

  get '/square/:number' do
   @num = params[:number].to_i
   @real = @num * @num
   "#{@real}"
  end

  get '/say/:number/:phrase' do
   @number = params[:number].to_i #3
   @phrase = params[:phrase] #Show me the money
   @array = []
   i=0
    while i < @number
     @array << "#{@phrase}\n"
      i+=1
   end
  puts
   @array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @words = "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
    @words
  end

 get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    case @operation
    when "add"
    @real = @num_1 + @num_2
    "#{@real}"
    when "subtract"
      "#{@num_1}" - "#{@num_2}"
    when "multiply"
      "#{@num_1}" * "#{@num_2}"
    when "divide"
      "#{@num_1}" / "#{@num_2}"
    end
 end

end
