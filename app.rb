require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @phrase * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operation = params[:operation]
    case @operation
      when "add"
        @result = @number1.to_i + @number2.to_i
      when "multiply"
        @result = @number1.to_i * @number2.to_i
      when "divide"
        @result = @number1.to_i / @number2.to_i
      when "subtract"
        @result = @number1.to_i - @number2.to_i
    end
    "#{@result}"
  end
end
