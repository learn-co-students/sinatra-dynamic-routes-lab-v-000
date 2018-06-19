require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
 get '/reversename/:name' do
   @name = params[:name]
   @reversename = @name.reverse
   "#{@reversename}"
 end

 get '/square/:number' do
   @number = params[:number]
   @square = @number.to_i * @number.to_i
   "#{@square}"
 end

 get '/say/:number/:phrase' do
   @phrase = params[:phrase]
   @number = params[:number]
   @times = @number.to_i
    "#{@phrase}" * @times

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
    @mult = @number1.to_i * @number2.to_i
    @divide = @number1.to_i/@number2.to_i
    @add = @number1.to_i + @number2.to_i
    @subtract = @number2.to_i - @number1.to_i

    if params[:operation] == "add"
        "#{@add}"
    elsif params[:operation] == "multiply"
      "#{@mult}"
    elsif params[:operation] == "divide"
       "#{@divide}"
     elsif params[:operation] == "subtract"
        "#{@subtract}"
    end
  end
end
