require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name].reverse
    @user_name
  end

  get "/square/:number" do
    @square = params[:number].to_i**2
    @square.to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    [@phrase] * @num * "\n"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @phrase = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @phrase
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    if @operation == "add"
      @solution = params[:number1].to_i + params[:number2].to_i
      @solution.to_s
    elsif @operation == "subtract"
      @solution = params[:number1].to_i - params[:number2].to_i
      @solution.to_s
    elsif @operation == "multiply"
      @solution = params[:number1].to_i * params[:number2].to_i
      @solution.to_s
    elsif @operation == "divide"
      @solution = params[:number1].to_i / params[:number2].to_i
      @solution.to_s
    end
  end
end