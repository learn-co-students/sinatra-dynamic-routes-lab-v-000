require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_f ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i

    "#{@phrase}\n" * @number
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
    @operation = params[:operation]
    @number1 = params[:number1].to_f
    @number2 = params[:number2].to_f

    case @operation
    when "add"
      "#{ @number1 + @number2 }"
    when "subtract"
      "#{ @number1 - @number2 }"
    when "multiply"
      "#{ @number1 * @number2 }"
    when "divide"
      "#{ @number1 / @number2 }"
    else
      "I don't know what you wanted to do."
    end

  end

end