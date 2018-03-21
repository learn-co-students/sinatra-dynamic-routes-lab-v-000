require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "This is my root page"
  end

  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @square = (params[:number].to_i)**2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @n = params[:number].to_i

    @return = @phrase * @n
    @return
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @join = [params[:word1],params[:word2], params[:word3], params[:word4], params[:word5]].join(" ")
    "#{@join}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == "add"
      @add = @num1 + @num2
      "#{@add}"
    elsif @operation == "subtract"
      @subtract = @num2 - @num1
      "#{@subtract}"
    elsif @operation == "multiply"
      @multiply = @num1 * @num2
      "#{@multiply}"
    else @operation == "divide"
      @divide = @num1 / @num2
      "#{@divide}"
    end
  end

end
