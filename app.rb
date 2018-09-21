require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i
    @squared_number = @square * @square
    @squared_number.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number]
    @phrase * @num.to_i
  end

 get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
 end


 get '/:operation/:number1/:number2' do
   @operations = params[:operation]
   @num1 = params[:number1].to_i
   @num2 =params[:number2].to_i
  if @operations == "add"
    (@num1 + @num2).to_s
  elsif @operations == "subtract"
    (@num1 - @num2).to_s
  elsif @operations == "multiply"
    (@num1 * @num2).to_s
  elsif @operations == "divide"
    (@num1 / @num2).to_s
  end
 end


end
