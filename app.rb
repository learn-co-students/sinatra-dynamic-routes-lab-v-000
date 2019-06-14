require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    num = params.values[0].to_i
    square = num * num
    square.to_s
  end

  get "/say/:number/:phrase" do
    params[:number].to_i.times.collect do |x|
      params[:phrase]
    end
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params.values.join(" ")}."
  end

  get "/:operation/:number1/:number2" do
    result = ""
    if params[:operation] == "add"
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      (params[:number1].to_i * params[:number2].to_i).to_s
    else
      (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end

end
