require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @return_phrase = []
    @number.times do
      @return_phrase << @phrase
    end
    @return_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @return_string = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation.downcase == "add"
      @return_value = @number1 + @number2
    elsif @operation.downcase == "subtract"
      @return_value = @number1 - @number2
    elsif @operation.downcase == "divide"
      @return_value = @number1 / @number2
    elsif @operation.downcase == "multiply"
      @return_value = @number1 * @number2
    end
    @return_value.to_s

  end

end
