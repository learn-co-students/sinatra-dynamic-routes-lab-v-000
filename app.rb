require_relative 'config/environment'

class App < Sinatra::Base

#  get '/hello' do
#    "Hello World!"
#  end

get '/reversename/:name' do
  @backwards = params[:name]
  "#{@backwards.reverse}"
end

get '/square/:number' do
  @xx = params[:number]
  (@xx.to_i ** 2).to_s
end

get '/say/:number/:phrase' do
   final_string = ""
   (params[:number].to_i).times do
     final_string += "#{params[:phrase]}\n"
   end
   final_string
 end

 #get '/say/:number/:phrase' do
  # @num = params[:number]
   #@pha = params[:pha]
   #{}"#{@num.times.@pha}"
 #end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @one = params[:word1]
  @two = params[:word2]
  @three = params[:word3]
  @four = params[:word4]
  @five = params[:word5]
"#{@one} #{@two} #{@three} #{@four} #{@five}."
end

get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @number1 = params[:number1]
  @number2 = params[:number2]
  if operation == 'add'
    answer = number1 + number2
  elsif operation == 'subtract'
    answer = number1-number2
  elsif operation == 'mulitply'
    answer = number1*number2
  else operation == 'divide'
    answer = number1%number2
  end
end


end
