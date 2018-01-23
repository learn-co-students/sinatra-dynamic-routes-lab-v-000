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

  #get '/*/*/*' do
  #  @test = params[:splat]
  #  @op = @test[0]
  #  @num1 = @test[1].to_i
  #  @num2 = @test[2].to_i
  #  @ops = {"add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}
  #  @total = @num1.send(@ops[@op], @num2)
  #  "#{@total}"
 #end

  get '/add/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @total = @num1 + @num2
    "#{@total}"
  end

  get '/subtract/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @total = @num1 - @num2
    "#{@total}"
  end

  get '/multiply/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @total = @num1 * @num2
    "#{@total}"
  end

  get '/divide/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @total = @num1 / @num2
    "#{@total}"
  end









end
