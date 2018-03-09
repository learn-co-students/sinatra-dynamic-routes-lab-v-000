require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get "/square/:number" do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      @x = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @x = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @x = params[:number1].to_i * params[:number2].to_i
    else params[:operation] == "divide"
      @x = params[:number1].to_i / params[:number2].to_i
    end
    "#{@x}"
  end
end
