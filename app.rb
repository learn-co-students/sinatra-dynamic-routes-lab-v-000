require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @new_phrase = ""
    x = 0
    while x < @number
      @new_phrase = @phrase + " " + @new_phrase
      x += 1
    end
    "#{@new_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = ""
    params.each do |key, value|
      @phrase = @phrase + " " + value
    end
    "#{@phrase}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation].downcase
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @sol = 0
    case @op
    when "add"
      @op = "+"
      @sol = @num1 + @num2
    when "subtract"
      @op = "-"
      @sol = @num1 - @num2
    when "multiply"
      @op = "*"
      @sol = @num1 * @num2
    when "divide"
      @op = "/"
      @sol = @num1 / @num2
    end
    "#{@num1} #{@op} #{@num2} = #{@sol}"
  end

end
