require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reverse = params[:name].reverse!
    @reverse
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    @square.to_s
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    return @phrase * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @one = params[:word1]
    @two = params[:word2]
    @three = params[:word3]
    @four = params[:word4]
    @five = params[:word5]

    "#{@one} #{@two} #{@three} #{@four} #{@five}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      @total = params[:number1].to_i + params[:number2].to_i
      @total.to_s
    elsif params[:operation] == "subtract"
      @total = params[:number2].to_i - params[:number1].to_i
      @total.to_s
    elsif params[:operation] == "multiply"
      @total = params[:number1].to_i * params[:number2].to_i
      @total.to_s
    elsif params[:operation] == "divide"
      @total = params[:number1].to_i / params[:number2].to_i
      @total.to_s
    end
  end
end
