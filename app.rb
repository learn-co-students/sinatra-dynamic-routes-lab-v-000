require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @revname = params[:name].reverse
    "#{@revname}"
  end

  get '/square/:number' do
    @square = params[:number].to_i
    "#{@square ** 2}"
    # binding.pry
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
    # binding.pry
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    # binding.pry
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    "#{@num1 + @num2
      @num2 - @num1
      @num1 * @num2
      @num1 / @num2}"
  end
end
