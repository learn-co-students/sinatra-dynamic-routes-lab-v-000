require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i ** 2
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @repeat = @number.times.collect {@phrase}.join(' ')
    "#{@repeat}"
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
    @operation = params[:operation]

    if @operation == "add"
      @sum = @number1 + @number2
      "#{@sum}"
    elsif @operation == "subtract"
      @difference = @number1 - @number2
      "#{@difference}"
    elsif @operation == "multiply"
      @product = @number1 * @number2
    "#{@product}"
  else @operation == "divide"
    @quotient = @number1 / @number2
    "#{@quotient}"
  end
end

end
