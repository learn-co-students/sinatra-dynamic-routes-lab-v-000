require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
    end

    get '/square/:number' do
      @square = params[:number].to_i ** 2
      "#{@square}"
    end

    get '/say/:number/:phrase' do
      @num = params[:number].to_i
      @phrase = params[:phrase]
      @string = ""
      i = 1
      loop do
         @string += @phrase
          i+=1
         break if i > @num
      end
      "#{@string}"
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      @string = "#{@word1} "+"#{@word2} "+"#{@word3} "+"#{@word4} "+ "#{@word5}."
      "#{@string}"
    end

    get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      @answer = nil
      case @operation
      when "add"
        @answer = @num1 + @num2
      when "subtract"
        @answer = @num1 - @num2
      when "multiply"
        @answer = @num1 * @num2
      when "divide"
        @answer = @num1 / @num2
      end
    "#{@answer}"
  end


end
