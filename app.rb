require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @reverse = params[:name]
    @reverse.reverse!
  end

  get "/square/:number" do
    @num = params[:number].to_i ** 2
    @num.to_s
    # (@num.to_i**2).to_s
  end

  get "/say/:number/:phrase" do
    times_answer = ""
    params[:number].to_i.times do
      times_answer += "#{params[:phrase]}"
    end
    times_answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    # @words = params[word1].to_s + " " + params[:word2].to_s + " " + params[:word3].to_s + " " + params[:word4].to_s + " " + params[:word5].to_s + "."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      eq = number1 + number2
    elsif operation == "subtract"
      eq = number1 - number2
    elsif operation == "multiply"
      eq = number1 * number2
    elsif operation == "divide"
      eq = number1/number2
    else
      eq = "Please enter valid infos"
    end
    eq.to_s
  end
end
