require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "Hello #{@user_name}!"
  end


  get "/square/:number" do
    @number1= params[:number].to_i
    "#{@number1 * @number1}"
  end


  get "/say/:number/:pharse" do
  @number = params[:number].to_i
  @phrase = params[:pharse]
    "#{@phrase}" * @number
  end

  get "/:say/:word1/:word2/:word3/:word4/:word5" do
      @say = params[:say]
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      "#{@say} #{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
 # when is has the : in front... it makes it dynamic..
  @operation = params[:operation]
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i

  if @operation == "add"
    "#{@number1 + @number2}"
  elsif @operation == "subtract"
    "#{@number1 -  @number2}"
  elsif @operation == "multiply"
    "#{@number1 * @number2}"
  else
    "#{@number1 / @number2}"
  end
 end
end
