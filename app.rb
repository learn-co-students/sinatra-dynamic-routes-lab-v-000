require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    # @number = params[:number]
    # "#{@number.to_i * @number.to_i}"
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
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
    @number1 = param[:number1].to_i
    @number2 = param[:number2].to_i
    if @operation == "add"
      answer = @number1 + @number2
      "#{answer}"
    elsif @operation == "subtract"
      answer = @number - @number2
      "#{answer}"
    elsif @operation == "multiply"
      answer = @number1 * @number2
      "#{answer}"
    else @operation == "divide"
      answer = @number1 / @number2
      "#{answer}"
    end
  end

end
