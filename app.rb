require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @sq = @num * @num
    "#{@sq}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    # @num.times do
    #   "#{@phrase}"
    # end
    "#{@phrase}"*@num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @wd1 = params[:word1]
    @wd2 = params[:word2]
    @wd3 = params[:word3]
    @wd4 = params[:word4]
    @wd5 = params[:word5]
    "#{@wd1} #{@wd2} #{@wd3} #{@wd4} #{@wd5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
    when "add"
      @result = @num1 + @num2
      "#{@result}"
    when "subtract"
      @result = @num1 - @num2
      "#{@result}"
    when "multiply"
      @result = @num1 * @num2
      "#{@result}"
    when "divide"
      @result = @num1 / @num2
      "#{@result}"
    end
  end


end
