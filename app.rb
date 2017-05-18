require_relative 'config/environment'

class App < Sinatra::Base
 get '/' do
   "Welcome to dynamic routes lab!"
 end

 get '/reversename/:name' do
   @name = params[:name]
   @name.reverse
 end

 get '/square/:number' do
   @number = params[:number]
   "#{@number.to_i**2}"
 end

 get '/say/:number/:phrase' do
   @number, @phrase = params[:number], params[:phrase]
   Array.new(@number.to_i, @phrase + "\n")
 end

 get '/say/:word1/:word2/:word3/:word4/:word5' do
   #@word1, @word2, @word3, @word4, @word5 = params[@word1], params[@word2], params[@word3], params[@word4], params[@word5]
   "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
 end

 get '/:operation/:number1/:number2' do
   @operation, @num1, @num2 = params[:operation], params[:number1].to_i, params[:number2].to_i
   case @operation
    when "add"
       (@num1 + @num2).to_s
    when "subtract"
      (@num1 - @num2).to_s
    when "multiply"
       (@num1 * @num2).to_s
    when "divide"
      (@num1 / @num2).to_s
    else
      "This operation is not defined"
   end
 end
end
