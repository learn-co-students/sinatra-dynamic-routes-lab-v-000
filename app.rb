require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "Your name must be #{@name}!"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "The square of #{params[:number]} is #{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @number.times do |x|
      @string += @phrase
    end
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      @sum = @num1 + @num2
      "#{@sum}"
    elsif params[:operation] == "subtract"
      @sum = @num1 - @num2
      "#{@sum}"
    elsif params[:operation] == "multiply"
      @sum = @num1 * @num2
      "#{@sum}"
    elsif params[:operation] == "divide"
      @sum = @num1 / @num2
      "#{@sum}"
    end
  end
end
