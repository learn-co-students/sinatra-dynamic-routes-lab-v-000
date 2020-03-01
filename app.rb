require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    number = params[:number]
    "#{number.to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    number = params[:number]
    phrase = params[:phrase]
    "#{phrase} " * number.to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} " "#{params[:word2]} " "#{params[:word3]} " "#{params[:word4]} " "#{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    answer = ""

    case params[:operation]
    when 'add'
      answer = "#{num1 + num2}"
    when 'subtract'
      answer = "#{num1 - num2}"
    when 'divide'
      answer = "#{num1 / num2}"
    when 'multiply'
      answer = "#{num1 * num2}"
    end
  end

end
