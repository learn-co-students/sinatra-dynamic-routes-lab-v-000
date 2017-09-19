require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num * @num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @output = @phrase * @num
    "#{@output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    @sen = @w1.capitalize + " " + @w2 + " " + @w3 + " " + @w4 + " " + @w5 + "."
    "#{@sen}"
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = paramsp[:number2].to_i
    @ops = {"add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}
    @total = @num1.send(@ops[@op], @num2)
    "#{@total}"
  end




end
