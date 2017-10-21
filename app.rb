require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @reversed_name = params[:name].reverse
    "Reversed name: #{@reversed_name}"
  end

  get "/square/:number" do
    @squared_num = (params[:number].to_i ** 2)
    "Squared number: #{@squared_num}".to_s
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    number.times.map { "#{phrase}"}
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    number_1 = params[:number1].to_i
    number_2 = params[:number2].to_i
    case operation
    when "add"
      result = number_1 + number_2
    when "subtract"
      result = number_1 - number_2
    when "multiply"
      result = number_1 * number_2
    when "divide"
      result = number_1 / number_2
    end
    result.to_s
  end

end
