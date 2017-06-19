require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phrase = ""
    num.times {phrase << params[:phrase] + "\n"}
    phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params.values.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operation == "add"
      ans = num1 + num2
    elsif operation == "subtract"
      ans = numb1 - num2
    elsif operation == "multiply"
      ans = num1 * num2
    elsif operation == "divide"
      ans = num1 / num2
    end
    ans.to_s
  end

end
