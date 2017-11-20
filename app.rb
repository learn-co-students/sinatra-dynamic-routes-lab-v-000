require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i * params[:number].to_i
    "#{@num}"
  end

  get '/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @output = "#{@phrase} " * @num
    @output

    # erb :repeater # Not sure why erb is not working...

    # @num = params[:number].to_i
    # @phrase = params[:phrase]
    # #@num.times do
    #   "#{@phrase}"
    # #end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."

  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = case params[:operation]
      when "subtract" then "#{@num1 - @num2}"
      when "add" then "#{@num1 + @num2}"
      when "multiply" then "#{@num1 * @num2}"
      when "divide" then "#{@num1 / @num2}"
    end
    @op
  end

  # Note: all of these methods were very finiky.  Took a lot of playing around
  # With different ways to get them to work.

    # @num1 = params[:number1]
    # @num2 = params[:number2]
    # @op = case params[:operation]
    #   when "subtract" then -
    #   when "add" then +
    #   when "multiply" then *
    #   when "divide" then /
    # end
    # "#{@num1 @op @num2}"




  # get '/' do
  #   erb :repeater
  # end

end
