require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i**2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    number = @number.to_i - 1
    @phrase = params[:phrase]
    phrase = @phrase
     number.times do
       @phrase += phrase
     end
     @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:num1/:num2' do
    @operation = params[:operation]
    @num1 = params[:num1]
    @num2 = params[:num2]
    if @operation == 'add'
      result = "#{@num1.to_i + @num2.to_i}"
    elsif @operation == 'subtract'
      result = "#{@num1.to_i - @num2.to_i}"
    elsif @operation == 'divide'
      result = "#{@num1.to_i / @num2.to_i}"
    elsif @operation == 'multiply'
      result = "#{@num1.to_i * @num2.to_i}"
    end
    result
  end
end
