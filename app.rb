require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].reverse
     "#{@name}"
  end

  get "/square/:number" do
      square_num = params[:number].to_i ** 2
      "#{square_num.to_s}"
  end

  get "/say/:number/:phrase" do
    output_string = ""
      params[:number].to_i.times do
        output_string += "#{params[:phrase]}\n"
      end 
      output_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    output_string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
      if params[:operation] == "add"
        result = params[:number1].to_i + params[:number2].to_i
        result = result.to_s
        result
      elsif params[:operation] == "subtract"
        result = params[:number1].to_i - params[:number2].to_i
        result = result.to_s
        result
      elsif params[:operation] == "divide"
        result = params[:number1].to_i / params[:number2].to_i
        result = result.to_s
        result
      elsif params[:operation] == "multiply"
        result = params[:number1].to_i * params[:number2].to_i
        result = result.to_s
        result
      end
  end
end