require_relative 'config/environment'

class App < Sinatra::Base

    get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse!}"
  end

  get "/square/:number" do
    @num = params[:number]
    "#{@num.to_i**2}"
  end

   get "/say/:number/:phrase" do

    @num = params[:number]
    @phrase = params[:phrase]
    output_string = ""
    @num.to_i.times do |i|
        output_string += "#{@phrase}\n"
    end
    output_string
  end

   get "/say/:word1/:word2/:word3/:word4/:word5" do

     "#{params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] = "add"
        result = params[:number1].to_i + params[:number2].to_i
    elseif params[:operation] = "subtract"
        result = params[:number1].to_i - params[:number2].to_i
    elseif params[:operation] = "multiply"
        result = params[:number1].to_i * params[:number2].to_i
    elseif params[:operation] = "divide"
        result = params[:number1].to_i / params[:number2].to_i
    else
        "Unknown operation"
    end
    result.to_s
  end

end #class