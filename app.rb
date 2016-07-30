require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    @reverse_name = @user_name.reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @times = (@phrase + "\n")*@number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if params[:operation] == "add"
      @sum = @number1 + @number2
      "#{@sum}"
    elsif params[:operation] == "subtract"
      @difference = @number1 - @number2
      "#{difference}"
    elsif params[:operation] == "multiply"
      @product = @number1*@number2
      "#{@product}"
    elsif params[:operation] == "divide"
      @quotient = @number1/@number2
      "#{@quotient}"
    end
  end

end
