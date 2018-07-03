require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get "/square/:number" do
    "#{params[:number].to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    "#{params[:phrase] * params[:number].to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @words = Array.new
    @words << params[:word1] << params[:word2] << params[:word3] << params[:word4] << params[:word5]
    "#{@words.join(" ")}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]

    if @operation == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif @operation == 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif @operation == 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}"
    elsif @operation == 'divide'
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end

end
