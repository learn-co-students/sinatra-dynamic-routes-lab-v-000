require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].split("").reverse.join}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @num_squared = @num*@num
    "#{@num_squared.to_s}"
  end

  get '/say/:number/:phrase' do
    @repeat = params[:number].to_i
    @phrase = params[:phrase]

    final_return = ""
    @repeat.times do
      final_return += "#{@phrase}\n"
    end
    final_return
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]

    case @operation
    when add
      @result = @num1 + @num2
    when subtract
      @result = @num2 - @num1
    when multiply
      @result = @num1 * @num2
    when divide
      @result = @num2/@num1
    end
    "#{@result}" 
  end
end
