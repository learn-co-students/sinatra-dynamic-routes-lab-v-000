require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse = params[:name].split(//).reverse!.join
    "#{@reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    # @phrase = params[:phrase]
    @phrase_array = []

    @number.times do
      @phrase_array << params[:phrase]
    end

    @phrase = @phrase_array.join(\n)

    "#{@phrase}"
    # "#{@phrase}\n#{@phrase}\n#{@phrase}\n"

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
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when @operation = "add"
      @total = @number1 + @number2
      "#{@total}"
    when @operation = "subtract"
      @diff = @number1 - @number2
      "#{@diff}"
    when @operation = "multiply"
      @product = @number1 * @number2
      "#{@product}"
    when @operation = "divide"
      @result = @number1 / @number2
      "#{@result}"
    end

  end

end
