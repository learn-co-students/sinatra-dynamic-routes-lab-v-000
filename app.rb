require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @phrases = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times {|i| @phrases += @phrase}
    "#{@phrases}"
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
      "#{@number1 + @number2}"
    elsif params[:operation] == "subtract"
      "#{@number1 - @number2}"
    elsif params[:operation] == "multiply"
      "#{@number1 * @number2}"
    elsif params[:operation] == "divide"
      "#{@number1 / @number2}"
    else
    end
  end




end
