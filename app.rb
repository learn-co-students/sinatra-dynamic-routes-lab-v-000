require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @num = params[:number].to_i
    @square = @num * @num
    "#{@square}"
  end

  get '/say/:number/:phrase' do 
    @repeat = params[:number].to_i
    "#{params[:phrase]}\n" * @repeat
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

    if params[:operation].to_s == "add"
      @answer = @number1 + @number2
    elsif params[:operation].to_s == "subtract"
      @answer = @number1 - @number2
    elsif params[:operation].to_s == "multiply"
      @answer = @number1 * @number2
    elsif params[:operation].to_s == "divide"
      @answer = @number1 / @number2
    end

    "#{@answer}"
  end     
end