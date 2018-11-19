require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @stated_phrase = params[:phrase] * params[:number].to_i
    "#{@stated_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@phrase}"
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if operation == "add"
      @solution = number1 + number2
      "#{@solution}"
    elsif operation == "subtract"
      @solution = number1 - number2
      "#{@solution}"
    elsif operation == "multiply"
      @solution = number1 * number2
      "#{@solution}"
    elsif operation == "divide"
      @solution = number1 / number2
      "#{@solution}"
    end
  end
end
