require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get "/square/:number" do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    @phrases = params[:phrase] * params[:number].to_i
    "#{@phrases}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params.values.join(" ")}."
  end

  get "/:operation/:number1/:number2" do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    op = params[:operation]
    if op == "add"
      "#{n1 + n2}"
    elsif op == "subtract"
      "#{n1 - n2}"
    elsif op == "multiply"
      "#{n1 * n2}"
    elsif op == "divide"
      "#{n1 / n2}"
    else
      "#{op} is not a valid operator"
    end
  end
end