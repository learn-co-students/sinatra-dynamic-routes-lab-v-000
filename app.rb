require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    square = number ** 2
    square.to_s
  end

  get '/say/:number/:phrase' do
    answer = ""
    number = params[:number].to_i
    phrase = params[:phrase]
    number.times do
      answer += "#{phrase}\n"
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1]
    number2 = params[:number2]

    case params[:operation]
    when add
      number1 + number2
    when subtract
      number1 - number2
    when multiply
      number1 * number2
    when divide
      number1 / number2
    end
  end
end
