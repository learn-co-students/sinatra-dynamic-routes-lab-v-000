require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    name = params[:name]
    name.reverse
  end

  get "/square/:number" do
    square = params[:number].to_i * params[:number].to_i
    square.to_s
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    final_string = ""
    number.times do
      final_string += "#{phrase}"
    end
    final_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
        output = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
        output = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
        output = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      output = params[:number1].to_i / params[:number2].to_i
    else "Operation not recognised"
    end
    output.to_s
  end



end
