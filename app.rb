require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number.to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_array = []
    @number.times {@phrase_array << @phrase }
    "#{@phrase_array.join(" ")}"

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
    if @operation == "add"
      @solution = @number1 + @number2
      "#{@solution}"
    elsif @operation == "subtract"
      @solution = @number1 - @number2
      "#{@solution}"
    elsif @operation == "multiply"
      @solution = @number1 * @number2
      "#{@solution}"
    elsif @operation == "divide"
      @solution = @number1 / @number2
      "#{@solution}"
    end
  end

end
