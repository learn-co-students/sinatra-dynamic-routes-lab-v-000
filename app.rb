require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get "/square/:number" do
    @sq = params[:number].to_i ** 2
    "#{@sq}"
  end

  get "/say/:number/:phrase" do
    @phrase = ""
    params[:number].to_i.times do
      @phrase += params[:phrase]
    end
    "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
   "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    case operation
    when "add"
      addition = params[:number1].to_i + params[:number2].to_i
     "#{addition}"
    when "subtract"
      subtraction = params[:number1].to_i - params[:number2].to_i
      "#{subtraction}"
    when "multiply"
      multiplication = params[:number1].to_i * params[:number2].to_i
      "#{multiplication}"
    when "divide"
      division = params[:number1].to_i / params[:number2].to_i
      "#{division}"
    else
      puts "That's not math, cakepan!"
    end
  end

end
