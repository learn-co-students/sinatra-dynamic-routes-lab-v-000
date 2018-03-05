require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    reversed_name = params[:name].reverse
    "#{reversed_name}"
  end

  get '/square/:number' do
    orig_num = params[:number].to_i
    square_num = orig_num * orig_num
    "#{square_num}"
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase]
    num = params[:number].to_i
    repeated_phrase = phrase * num
    "#{repeated_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1, word2, word3, word4, word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    phrase = "#{word1} #{word2} #{word3} #{word4} #{word5}."
    "#{phrase}"
  end

  get '/:operation/:number1/:number2' do
    operation, number1, number2 = params[:operation], params[:number1].to_i, params[:number2].to_i
    if operation == "add"
      result = number1 + number2
    elsif operation == "subtract"
      result = number1 - number2
    elsif operation == "multiply"
      result = number1 * number2
    elsif operation == "divide"
      result = number1 / number2
    else
    end
    "#{result}"
  end


end
