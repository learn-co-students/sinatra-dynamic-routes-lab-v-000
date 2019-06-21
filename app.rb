require_relative 'config/environment'

class App < Sinatra::Base

  # accepts a name and renders the name backwards
  get '/reversename/:name' do
    params[:name].reverse
  end

  # accepts a number and retrns the square of that number
  # Note: values in params always come in as strings and
  # that the return value should also be a string
  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    @square.to_s
  end

  # accepts a number and a phrase and returns that phrase
  # in a string the number of times given
  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  # accepts five words and returns a string containing all five words
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  # accepts an operation and performs the operation on the two provided numbers
  get '/:operation/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    case params[:operation]
    when "add"
      answer = num1 + num2
    when "subtract"
      answer = num1 - num2
    when "multiply"
      answer = num1 * num2
    else "divide"
      answer = num1 / num2
    end
    answer.to_s
  end

end
