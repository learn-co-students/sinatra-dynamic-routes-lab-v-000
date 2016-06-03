require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number**2}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
      "#{phrase}\n"*number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation].downcase
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    case operation
    when "add"
      answer = number1 + number2
    when "subtract"
      answer = number1 - number2
    when "multiply"
      answer = number1 * number2
    when "divide"
      answer = number1 / number2
    else
      answer = "Sorry, can't handle that operation."
    end
    answer.to_s
  end

end
