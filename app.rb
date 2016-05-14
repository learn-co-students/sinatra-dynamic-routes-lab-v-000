require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @reverse = params[:name].reverse!
    "#{@reverse}"
  end

  get "/multiply/:num1/:num2" do
    @product = params[:num1].to_i * params[:num2].to_i
    "#{@product}"
  end

  get "/square/:number" do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    phrase = ''
    num = params[:number].to_i
    num.times do
      phrase += "#{params[:phrase]}\n"
    end
    phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    arr = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    @sentence = arr.join(' ')
    "#{@sentence}."
  end

  get "/:operation/:number1/:number2" do
    one = params[:number1].to_i
    two = params[:number2].to_i
    if params[:operation] == "add"
      @result = one + two
    elsif params[:operation] == "subtract"
      @result = one - two
    elsif params[:operation] == "multiply"
      @result = one * two
    elsif params[:operation] == "divide"
      @result = one / two
    end
    "#{@result}"
  end
end
