require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    @number = @number.to_i
    @result = @number * @number
    @result.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @number = @number.to_i
    @sentence = " "
    @number.times do
      @sentence << @phrase
    end
    @sentence
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @string = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    @string
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    @number1 = @number1.to_i
    @number2 = @number2.to_i
    if @operation == "add"
      @result = @number1 + @number2
      @result.to_s
    elsif @operation == "subtract"
      @result = @number2 - @number1
      @result.to_s
    elsif @operation == "multiply"
      @result = @number1 * @number2
      @result.to_s
    elsif @operation == "divide"
      @result = @number1 / @number2
      @result.to_s
    end
  end
end
