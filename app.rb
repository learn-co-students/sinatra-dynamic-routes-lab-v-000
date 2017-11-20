require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @squared_number = params[:number].to_i * params[:number].to_i
    @squared_number.to_s
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    "#{@phrase} " * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @sentence = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@sentence}"
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      @result = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @result = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @result = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @result = params[:number1].to_i/params[:number2].to_i
    end
    "#{@result}"
  end

end
