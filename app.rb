require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] + '/n'
    @number = params[:number].to_i

    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    array = [@word1, @word2, @word3, @word4, @word5].join(" ")
    array + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation].downcase
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num1 - @num2}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    elsif @operation == "divide"
      "#{@num1 / @num2}"
    else
    end
  end

end
