require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]

    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i

    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].split('%20').join(' ')
    @print = []

    @number.times do
      @print << @phrase
    end

    "#{@print.join(' ')}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word6 = params[:word5]

    @phrase = []

    @phrase << @word1
    @phrase << @word2
    @phrase << @word3
    @phrase << @word4
    @phrase << @word6
    @phrase = @phrase.join(' ')
    @phrase << '.'

    "#{@phrase}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add" || "Add"
      "#{@number1 + @number2}"
    when "subtract" || "Subtract"
      "#{@number1 - @number2}"
    when "multiply" || "Multiply"
      "#{@number1 * @number2}"
    when "divide" || "Divide"
      "#{@number1 / @number2}"
    end




  end

end
