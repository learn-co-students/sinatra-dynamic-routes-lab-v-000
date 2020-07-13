require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse!
  end
  
  get "/square/:number" do
    @num = params[:number].to_i
    (@num*@num).to_s
  end
  
  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @num
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    words = [@word1, @word2, @word3, @word4, @word5]
    words.join(' ')+"."
  end
  
  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    case params[:operation]
      when "add" then (@num1 + @num2).to_s
      when "subtract" then (@num1 - @num2).to_s
      when "multiply" then (@num1 * @num2).to_s
      when "divide" then (@num1 / @num2).to_s
      else "Not a valid operation"
    end
  end
  
end