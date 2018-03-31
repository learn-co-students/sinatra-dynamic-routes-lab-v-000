require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @backname = params[:name].reverse
    @backname
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = @num1 + @num2 if params[:operation] == "add"
    @result = @num1 - @num2 if params[:operation] == "subtract"
    @result = @num1 * @num2 if params[:operation] == "multiply"
    @result = @num1 / @num2 if params[:operation] == "divide"
    "#{@result}"
  end

end
