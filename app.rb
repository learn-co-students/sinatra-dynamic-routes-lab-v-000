require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name}".reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num ** 2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    "#{@phrase}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    #binding.pry
    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}" + "."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    #binding.pry
    case @op
    when "add"
      @sum = @num1 + @num2
      @sum.to_s
    when "subtract"
      @diff = @num1 - @num2
      @diff.to_s
    when "multiply"
      @product = @num1 * @num2
      @product.to_s
    when "divide"
      @quo = @num1 / @num2
      @quo.to_s
    end
  end

end
