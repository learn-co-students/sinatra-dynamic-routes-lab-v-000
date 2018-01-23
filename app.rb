require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get "/square/:number" do
    @square = (params[:number].to_i**2)
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    n = params[:number].to_i
    @phrase = params[:phrase]*n
    "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    operation = params[:operation].to_s
    if operation == "add"
      @result = (n1+n2)
    elsif operation == "subtract"
      @result = (n1-n2)
    elsif operation == "multiply"
      @result = (n1*n2)
    elsif operation == "divide"
      @result = (n1/n2)
    end
    "#{@result.to_i}"
  end
end
