require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    number = params[:number].to_i
    "#{number * number}"
  end

  get "/say/:number/:phrase" do
    return_str = ""
    number = params[:number].to_i
    phrase = params[:phrase]

    number.times do
      return_str += "#{phrase}\n"
    end

    return_str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case operation
    when "add"
      value = number1 + number2
    when "subtract"
      value = number1 - number2
    when "multiply"
      value = number1 * number2
    else
      value = number1 / number2
    end

    value.to_s
  end
end
