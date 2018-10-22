require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
 @name = params[:name].reverse
   "#{@name}"
 end
end 	  get '/square/:number' do
   @num = params[:number].to_i
   "#{@num * @num}"
 end
  get '/say/:number/:phrase' do
  new_phrase = ""
  params[:number].to_i.times do
    new_phrase += params[:phrase]
  end
  new_phrase
end
get '/say/:word1/:word2/:word3/:word4/:word5' do
   new = params.map {|key, value| value}
   "#{new.join(' ') << '.'}"
 end
  get '/:operation/:number1/:number2' do
   @num1 = params[:number1].to_i
   @num2 = params[:number2].to_i
    "#{
   if params[:operation] == "add"
     @num1 + @num2
   elsif params[:operation] == "subtract" || params[:operation] == "minus"
     @num1 - @num2
   elsif params[:operation] == "divide"
     @num1 / @num2
   elsif params[:operation] == "multiply" || params[:operation] == "times"
     @num1 * @num2
   end
   }"
  end
end
