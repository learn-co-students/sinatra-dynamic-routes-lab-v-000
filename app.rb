require_relative 'config/environment'

class App < Sinatra::Base
 
 get '/reversename/:name' do
   @name = params[:name]
   @name.reverse 
 end 
 
 get '/square/:number' do
   @number = params[:number]
   @sqrtnum = @number.to_i * @number.to_i 
   @sqrtnum.to_s 
 end 
 
 get '/say/:number/:phrase' do 
   @number = params[:number]
   @phrase = params[:phrase]
   @int_num = @number.to_i 
   @phrase_array = [] 
   while @int_num > 0 
    @phrase_array << "#{@phrase} "   
    @int_num = @int_num -= 1
  end 
  @phrase_array
 end 
 
 get '/say/:word/:word2/:word3/:word4/:word5' do
   @word = params[:word]
   @word2 = params[:word2]
   @word3 = params[:word3]
   @word4 = params[:word4]
   @word5 = params[:word5]
   "#{@word} #{@word2} #{@word3} #{@word4} #{@word5}."
 end 
 
 get '/:operation/:number1/:number2' do 
   @operation = params[:operation]
   @number1 = params[:number1]
   @number2 = params[:number2]
   if @operation == "add"
     (@number1.to_i + @number2.to_i).to_s
    elsif @operation == "subtract"
      (@number1.to_i - @number2.to_i).to_s
    elsif @operation == "multiply"
      (@number1.to_i * @number2.to_i).to_s
    else @operation == "divide"
      (@number1.to_i / @number2.to_i).to_s
    end 
 end 
   

end