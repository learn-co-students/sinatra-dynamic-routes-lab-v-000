require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @sq = params[:number].to_i*params[:number].to_i
    "#{@sq}"
  end

  get "/say/:number/:phrase" do
  	params[:phrase] * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @op = params[:operation].to_s

    case @op
    when "add"
      "#{@n1+@n2}"
    when "subtract"
      "#{@n1-@n2}"
    when "multiply"
      "#{@n1*@n2}"
    when "divide"
      "#{@n1/@n2}"
    end
  end

end
