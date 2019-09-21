require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do 
     @n = params[:number]
     @phrase = params[:phrase]
    "#{@phrase}" * @n.to_i
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
    @operation = params[:operation]
    @n1 = params[:number1]
    @n2 = params[:number2]
      case @operation
      when "add"
        "#{@n1.to_i + @n2.to_i}"
      when "subtract"
        "#{@n1.to_i - @n2.to_i}"
      when "divide"
        "#{@n1.to_i / @n2.to_i}"
      when "multiply"
        "#{@n1.to_i * @n2.to_i}"
      end
  end

end