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
    @test = params.values.join(" ") + "."
    "#{@test}"
  end

  get '/:operation/:number1/:number2' do
    @test = params[:splat]
    @num1 = params[:number1].to_i
    @num2 = paramsp[:number2].to_i
    @test = params
    #@op = @test[0]
    #@num1 = @test[1].to_i
    #@num2 = @test[2].to_i
    @ops = {"add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}
    @total = @num1.send(@ops[@op], @num2)
    "#{@test}"
  end




end
