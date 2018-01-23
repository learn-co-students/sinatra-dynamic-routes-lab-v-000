require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @username = params[:name]
    @username.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    result = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      result = result + "#{@phrase}\n"
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @result = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    "#{@result}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1   = params[:number1].to_i
    @number2   = params[:number2].to_i
    case @operation
    when "add"
      result = @number1 + @number2
    when "subtract"
      result = @number1 - @number2
    when "multiply"
      result = @number1 * @number2
    when "divide"
      result = @number1 / @number2
    else
  "could not perform operation"
  end
  "#{result}"
end
end
