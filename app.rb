require_relative 'config/environment'
require 'pry'
require 'uri'

class App < Sinatra::Base
  #accepts the name and renders name backwards
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get "/say/:number/" + URI.encode(":phrase") do
    @number = params[:number].to_i
    @phrase = URI.decode(params[:phrase])
    @total = @phrase * @number
    "#{@total}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1}" + " #{@word2}" + " #{@word3}" + " #{@word4}" + " #{@word5}" + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
      if @operation == "add"
        @result = @number1 + @number2
      elsif @operation == "subtract"
        @result = @number1 - @number2
      elsif @operation == "multiply"
        @result = @number1 * @number2
      elsif @operation == "divide"
        @result = @number1 / @number2
      end
    "#{@result}"
  end
end
