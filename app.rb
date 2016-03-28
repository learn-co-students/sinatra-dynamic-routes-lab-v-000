require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    rev = @name.reverse
    "#{rev}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    string = ""
    @num.times {string << @phrase + "\n"}
    "#{string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    str = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + '.'
    "#{str}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    str = ""
    #binding.pry
    case @operation
    when "add"
      str << "#{@num1 + @num2}"
    when "subtract"
      str << "#{@num1 - @num2}"
    when "multiply"
      str << "#{@num1 * @num2}"
    when "divide"
      str << "#{@num1 / @num2}"
    else
      "WUT"
    end
    str
  end

end