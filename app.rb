require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @result = params[:number].to_i * params[:number].to_i
    "#{@result}"
  end

  get '/say/:number/:phrase' do
    @num, @phrase = params[:number].to_i, params[:phrase]
    num_string = ""
    @num.times {
      num_string += "#{@phrase}\n"
    }
    num_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation, @num1, @num2 = params[:operation].downcase, params[:number1].to_i, params[:number2].to_i
    result = nil
    case @operation
    when "add"
      result = @num1 + @num2
    when "subtract"
      result = @num1 - @num2
    when "multiply"
      result = @num1 * @num2
    when "divide"
      result = @num1 / @num2
    end
    result.to_s
  end

end
