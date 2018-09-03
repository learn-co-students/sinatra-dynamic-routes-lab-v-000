require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @sq_number = params[:number].to_i * params[:number].to_i
    "#{@sq_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @sum = @num1 + @num2
    @difference = @num1 - @num2
    @product = @num1 * @num2
    @dividend = @num1 / @num2

    if @operation == "add"
      "#{@sum}"
    elsif @operation == "subtract"
      "#{@difference}"
    elsif @operation == "multiply"
      "#{@product}"
    elsif @operation == "divide"
      "#{@dividend}"
    end
  end
end
