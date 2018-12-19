require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get "/reversename/:name" do 
    @username = params[:name]
    "#{@username.reverse!}"
  end 
  
  get "/square/:number" do 
    @number = params[:number].to_i
    "#{@number * @number}"
  end
  
  get "/say/:number/:phrase" do
    string = ""
    @num = params[:number]
    @phrase = params[:phrase]
      @num.to_i.times do 
        string << "#{@phrase}"
    end 
    string 
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end 
  
  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
      if @operation == "add"
        "#{@number1 + @number2}"
      elsif @operation == "subtract"
        "#{@number1 - @number2}"
      elsif @operation == "multiply"
        "#{@number1 * @number2}"
      elsif @operation == "divide"
        "#{@number1 / @number2}"
      else nil 
      end
  end
    
    
    
end