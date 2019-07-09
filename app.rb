require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
   get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}!"
   end
   
   get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
   end
     
   get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @return = []
    @number.times do
      @return << @phrase
    end
     @return.join
   end
   
   get '/say/:word1/:word2/:word3/:word4/:word5' do
     @return = []
     params.each do |key, value|
     @return << value
     end
     "#{@return.join(' ')}."
   end
   
   get '/:operation/:number1/:number2' do
     @oper = params[:operation]
     @num1 = params[:number1].to_i
     @num2 = params[:number2].to_i
     if @oper == "add"
       "#{@num1 + @num2}"
     elsif
        @oper == "subtract"
        "#{@num1 - @num2}"
     elsif
        @oper == "multiply"
        "#{@num1*@num2}" 
     else 
        @oper == "divide"
        "#{@num1/@num2}"
     end
   end
   
end