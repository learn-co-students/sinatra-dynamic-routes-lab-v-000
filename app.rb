require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @reverse = params[:name].reverse 
    "#{@reverse}"
  end
  
  get "/square/:number" do 
    @answer = params[:number].to_i * params[:number].to_i
    "#{@answer}"
  end
  
  get "/say/:number/:phrase" do 
    @phrase = ""
    @number = params[:number].to_i.times do 
      @phrase += params[:phrase]
    end
    "#{@phrase}"
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
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      @answer = @number1.to_i + @number2.to_i
    elsif @operation == "subtract"
      @answer = @number1.to_i - @number2.to_i
    elsif @operation == "multiply"
      @answer = @number1.to_i * @number2.to_i
    else
      @answer = @number1.to_i / @number2.to_i
    end
  "#{@answer}"
 end

end
  