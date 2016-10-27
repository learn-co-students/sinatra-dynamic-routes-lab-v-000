require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    num = params[:number].to_i
    square = num ** 2
    square.to_s
  end

  get "/say/:number/:phrase" do
    "#{params[:phrase]}\n" * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    (1..5).each_with_object(phrase = []) do |x|
      phrase << params["word#{x}".to_sym]
    end.join(" ") << "."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when "add"
      result =  num1 + num2
    when "subtract"
      result =  num1 - num2
    when "multiply"
      result =  num1 * num2
    when "divide"
      result =  num1 / num2
    end

    return result.to_s
  end
end
