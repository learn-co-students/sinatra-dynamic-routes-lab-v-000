require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name].reverse
      "#{@name}"
  end

  get '/square/:number' do 
    @sq_num = params[:number].to_i
    "#{@sq_num ** 2}"
  end

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @saying = params[:phrase]
    # binding.pry
    says = ""
    @num.times {says << @saying+"\n"}
    says
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    # binding.pry
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}.}"
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    # binding.pry
    case @operation
      when 'add'
        "#{@num1+@num2}"
      when 'subtract'
        "#{@num2-@num1}"
      when 'multiply'
        "#{@num1 * @num2}"
      else 'divide'
        "#{@num1 / @num2}"
    end
  end
end

