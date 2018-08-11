require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    @square = num * num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    @repeat = phrase * num
    "#{@repeat}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operator == "add"
      @result = num1 + num2
    elsif operator == "subtract"
      @result = num1 - num2
    elsif operator == "multiply"
      @result = num1 * num2
    else operator == "divide"
      @result = num1 / num2
    end
    "#{@result}"
  end
end
