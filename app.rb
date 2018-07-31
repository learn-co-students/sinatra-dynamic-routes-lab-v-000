require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase*@number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@phrase}"
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    case @op
      when "add"
        @result = @n1 + @n2
      when "subtract"
        @result = @n1 - @n2
      when "multiply"
        @result = @n1 * @n2
      when "divide"
        @result = @n1 / @n2
    end
    "#{@result}"
  end
end
