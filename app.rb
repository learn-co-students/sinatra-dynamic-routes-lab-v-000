require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @sum = params[:number].to_i * params[:number].to_i
    "#{@sum}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number_phrase = @phrase * @number
    "#{@number_phrase}"
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

    if params[:operation].include?('add')
      @add = @number1 + @number2
      "#{@add}"
    elsif
      params[:operation].include?('subtract')
      @subtract = @number1 - @number2
      "#{@subtract}"
    elsif
      params[:operation].include?('multiply')
      @multiply = @number1 * @number2
      "#{@multiply}"
    else
      params[:operation].include?('divide')
      @divide = @number1 / @number2
      "#{@divide}"
    end
  end
end
