require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end
  
  get "/square/:number" do 
    @squared_number = params[:number].to_i * params[:number].to_i 
    
    "#{@squared_number}"
  end
    
  get "/say/:number/:phrase" do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
     "#{@phrase}" * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1] 
    @word2 = params[:word2] 
    @word3 = params[:word3] 
    @word4 = params[:word4] 
    @word5 = params[:word5]
    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
  end 
  
  get "/:operation/:number1/:number2" do 
    if params[:operation] == "add"
      @output = params[:number1].to_i + params[:number2].to_i
      "#{@output}"
    elsif params[:operation] == "subtract"
      @output = params[:number1].to_i - params[:number2].to_i
      "#{@output}"
    elsif params[:operation] == "multiply"
      @output = params[:number1].to_i * params[:number2].to_i
      "#{@output}"
    elsif params[:operation] == "divide"
      @output = params[:number1].to_i / params[:number2].to_i
      "#{@output}"
    else 
      nil 
    end 
  end 
end