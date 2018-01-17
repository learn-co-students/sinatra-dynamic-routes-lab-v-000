require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

get "/reversename/:name" do
  @reverse_name = params[:name]
  "#{@reverse_name.reverse}"
end

get "/square/:number" do
@squared = params[:number]
"#{@squared.to_i * @squared.to_i}"
end

get "/say/:number/:phrase" do
@times = params[:number].to_i
@phrase = params[:phrase].to_s
@phrase * @times
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
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i

if @operation == "add"
  (@num1 + @num2).to_s
elsif @operation == "subtract"
  (@num1 - @num2).to_s
elsif @operation == "multiply"
  (@num1 * @num2).to_s
elsif @operation == "divide"
  (@num1 / @num2).to_s
else
  "Operation not valid"
end

end

end #of class App
