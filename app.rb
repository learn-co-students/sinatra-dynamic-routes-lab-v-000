require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    array=[]
    x = 0
    until x == @number
      array << @phrase
      x += 1
    end
    "#{array}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params[:word1] + " "
    @phrase << params[:word2] + " "
    @phrase << params[:word3] + " "
    @phrase << params[:word4] + " "
    @phrase << params[:word5]
    "#{@phrase}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation].include? "add"
      @operand = "+"
    elsif params[:operation].include? "subtract"
      @operand = "-"
    elsif params[:operation].include? "multiply"
      @operand = "*"
    elsif params[:operation].include? "divide"
      @operand = "/"
    end
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @answer = @num1.send(@operand, @num2)
    "#{@answer}"
  end
end
