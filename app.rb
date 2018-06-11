require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do 
    @number = params[:number]
    @square = @number.to_i*@number.to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @phrase * @number.to_i 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word_one = params[:word1]
    @word_two = params[:word2]
    @word_three = params[:word3]
    @word_four = params[:word4]
    @word_five = params[:word5]
    "#{@word_one} #{@word_two} #{@word_three} #{@word_four} #{@word_five}."
  end
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number_one = params[:number1]
    @number_two = params[:number2]
    @add = @number_one.to_i + @number_two.to_i
    @subtract = @number_one.to_i - @number_two.to_i
    @multiply = @number_one.to_i * @number_two.to_i
    @divide = @number_one.to_i / @number_two.to_i
    if @operation == "add"
      "#{@add}"
    elsif @operation == "subtract"
      "#{@subtract}"
    elsif @operation == "multiply"
      "#{@multiply}"
    elsif @operation == "divide"
      "#{@divide}"
    end
  end

end