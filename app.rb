require_relative 'config/environment'

class App < Sinatra::Base

 get "/reversename/:name" do
   @name = params[:name]
   @name.reverse
 end

 get "/square/:number" do
   @number = params[:number]
   "#{@number.to_i ** 2}"
 end

 get "/say/:number/:phrase" do
   @number = params[:number]
   @phrase = params[:phrase]
   "#{@phrase * @number.to_i}"
 end

 get "/say/:word1/:word2/:word3/:word4/:word5" do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end

 get "/:operation/:number1/:number2" do

   @number1 = params[:number1].to_i
   @number2 = params[:number2].to_i

   if params[:operation] == "add"
     return (@number1 + @number2).to_s
   elsif params[:operation] == "subtract"
     return (@number1 - @number2).to_s
   elsif params[:operation] == "multiply"
     return (@number1 * @number2).to_s
   else params[:operation] == "divide"
     return (@number1 / @number2).to_s
   end
  end
 end

   #    "#{@number1.to_i + @number2.to_i}"
   #
   # ["#{@number1.to_i + @number2.to_i}", "#{@number1.to_i - @number2.to_i}",
   #  "#{@number1.to_i * @number2.to_i}", "#{@number1.to_i / @number2.to_i}"]
   #  binding.pry
