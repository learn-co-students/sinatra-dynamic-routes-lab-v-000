require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name].reverse
  end

  get '/square/:number' do
    @squared = params[:number].to_i**2
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    output = ""
      @number.times do
       output += "#{@phrase}\n"
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    formatted = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    multiplied = ""
    if @operation == "add"
      multiplied += @num1 + @num2
    elsif @operation == "multiply"
      multiplied += @num1 * @num2
    elsif @operation == "subtract"
      multiplied += @num1 - @num2
    elsif @operation == "divide"
      multiplied += @num1 / @num2
    end
    multiplied
  end

end
