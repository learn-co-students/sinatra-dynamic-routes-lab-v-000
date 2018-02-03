require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{(@num**2).to_s}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    # @string = ""
    "#{@phrase}" * @num
    # @string

    # @num.times do
    #   @string += "#{@phrase}"
    # end
    # @string
  end

  get '/say/:word/:word2/:word3/:word4/:word5' do
    @word1 = params[:word]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      @num1 + @num2
    when "subtract"
      @num2 - @num1
    when "multiply"
      @num1 * @num2
    when "divide"
      @num1 / @num2
    end.to_s
  end
end
