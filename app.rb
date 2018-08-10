require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]

    @user_name.reverse!
  end

  get '/square/:number' do
    @num = params[:number].to_i

    @squared = @num * @num
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    @phrase * @num
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
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      @answer = @num1 + @num2
    when "subtract"
      @answer = @num1 - @num2
    when "multiply"
      @answer = @num1 * @num2
    when "divide"
      @answer = @num1 / @num2
    else
      @answer = "Not a valid operation."
    end

    @answer.to_s
  end
end
