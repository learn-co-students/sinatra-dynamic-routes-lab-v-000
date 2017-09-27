require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @my_phrase = []
    @number.times do
      @my_phrase << @phrase
    end
    "#{@my_phrase.join(", ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.map {|key,value| value}.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = nil
    if @operation == 'add'
      @result = @num1 + @num2
    elsif @operation == 'subtract'
      @result = @num1 - @num2
    elsif @operation == 'multiply'
      @result = @num1 * @num2
    elsif @operation == 'divide'
      @result = @num1 / @num2
    end
    "#{@result}"
  end



end
