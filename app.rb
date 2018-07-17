require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # get '/hello/:name' do
    # @user_name = params[:name]
    # "Hello #{@user_name}!
  # end

  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    # three dots is a non-inclusive range
    # no pesky off by one error here~
    (0...@number).map { |i| "#{@phrase}" }
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

    # refactor without result var?
   case @operation
    when "add"
     result = @number1 + @number2
     result.to_s
    when "subtract"
      result = @number1 - @number2
      result.to_s
    when "multiply"
      result = @number1 * @number2
      result.to_s
    when "divide"
      result = @number1 / @number2
      result.to_s
    end
  end

end
