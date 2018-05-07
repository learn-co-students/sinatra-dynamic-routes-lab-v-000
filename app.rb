require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name].to_s.reverse
    "#{@user_name}."
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @phrases = ""
    params[:number].to_i.times do 
    @phrases << params[:phrase]
    end
    @phrases
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @one = params[:word1]
    @two = params[:word2]
    @three = params[:word3]
    @four = params[:word4]
    @five = params[:word5]
    "#{@one} #{@two} #{@three} #{@four} #{@five}."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @answer = ""

    if params[:operation] == "add"
      @answer = (@num1 + @num2).to_s
    elsif params[:operation] == "subtract"
      @answer = (@num1 - @num2).to_s
    elsif params[:operation] == "multiply"
      @answer = (@num1 * @num2).to_s
    else params[:operation]
      @answer = (@num1 / @num2).to_s
    end
    @answer
  end
      

  
end