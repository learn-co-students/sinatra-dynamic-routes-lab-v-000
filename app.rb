require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

    get '/reversename/:name' do
      @name = params[:name]
      @name.reverse 
    end
  
    get '/square/:number' do
      @number = params[:number]
      @squared_n = @number.to_i ** 2 
      @squared_n.to_s 
    end

    get '/say/:number/:phrase' do
      @number = params["number"].to_i
      @phrase = []

      @number.times do
        @phrase << params[:phrase]
      end
      @phrase
    end
      
    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i

      case params[:operation]
      when 'add'
        @answer = (@num1 + @num2).to_s
      when 'subtract'
        @answer = (@num1 - @num2).to_s
      when 'multiply'
        @answer = (@num1 * @num2).to_s
      when 'divide'
        @answer = (@num1 / @num2).to_s
      end
    end
end
