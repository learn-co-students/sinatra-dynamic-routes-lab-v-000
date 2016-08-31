require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
      @name = params[:name]
      @name = @name.reverse
    end

    get '/square/:number' do
      @number = params[:number]
      @number = @number.to_i
      @square = @number*@number
      @square = @square.to_s
    end

    get '/say/:number/:phrase' do
      @number = params[:number]
      @phrase = params[:phrase]
      @number = @number.to_i
        "#{@phrase}\n" * @number
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
        [@word1, @word2, @word3, @word4, @word5].reject(&:empty?).join(' ') + "."
    end

    get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @number1 = params[:number1]
      @number2 = params[:number2]
        if @operation == 'add'
          @number1 = @number1.to_i
          @number2 = @number2.to_i
          @sum = @number2 + @number1
          @sum = @sum.to_s
        elsif @operation == 'multiply'
          @number1 * @number2
        elsif @operation == 'subtract'
          @number1 - @number2
        elsif @operation == 'divide'
          @number1 / @number2
        end
    end


end
