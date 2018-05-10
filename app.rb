require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @reverse_name = @name.reverse
    "#{@name} reversed is #{@reverse_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    "#{@number} squared equals #{@squared}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @times = params[:number].to_i
    (1..@times).collect do |p|
      "#{@phrase} "
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
    "#{@string}"
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
    when "add"
      @number1 + @number2
    when "subtract"
      @number1 - @number2
    when "multiply"
      @number1 * @number2
    when "divide"
      @number1 / @number2
    else
      "Select an applicable operation : add, subtract, multiply, or divide"
    end
  end

end
