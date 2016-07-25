require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @num = params[:number].to_i
    (@num ** 2).to_s
  end

  get "/say/:number/:phrase" do
    phrase = ""
    (params[:number].to_i).times do
      phrase += "#{params[:phrase]}\n"
    end
    phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]

    if operation == "add"
      n = params[:number1].to_i + params[:number2].to_i
    elsif operation == "subtract"
      n = params[:number1].to_i - params[:number2].to_i
    elsif operation == "multiply"
      n = params[:number1].to_i * params[:number2].to_i
    elsif operation == "divide"
      n = params[:number1].to_i / params[:number2].to_i
    end
    n.to_s
  end

end
