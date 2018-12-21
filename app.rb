require_relative 'config/environment'

class App < Sinatra::Base


  get "/reversename/:name" do
    @user_name = params[:name]
    @reverse_name = @user_name.reverse
    "#{@reverse_name}"
  end
  
  get "/square/:number" do
    @number = params[:number]
    @number_squared = (@number.to_i) * (@number.to_i)
    "#{@number_squared}"
  end
  
  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    phrases = ""
    @number.to_i.times do
      phrases += @phrase
    end
    phrases
  end

  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
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
      @solution = (@number1.to_i) + (@number2.to_i)
      elsif @operation == "subtract"
      @solution = (@number1.to_i) - (@number2.to_i)
      elsif @operation == "multiply" 
      @solution = (@number1.to_i) * (@number2.to_i)
      elsif @operation == "divide"
      @solution = (@number1.to_i) / (@number2.to_i)
    else
      puts "Do you know math?"
    end
    "#{@solution}"
  end

end