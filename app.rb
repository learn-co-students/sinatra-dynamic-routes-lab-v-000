require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Hello World"
  end

  get '/reversename/:name' do
    reversed_name = params[:name].reverse
    "#{reversed_name}"
  end

  get '/square/:number' do
    squared = params[:number].to_i * params[:number].to_i
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    multi_phrase = ""
    (params[:number].to_i).times { multi_phrase += "#{params[:phrase]}\n" }
    multi_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence = "#{params[:captures].join(" ")}" + "."
    sentence
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case operation
      when "add"
        "#{num1 + num2}"
      when "subtract"
        "#{num1 - num2}"
      when "multiply"
        "#{num1 * num2}"
      when "divide"
        "#{num1 / num2}"
      else
        "Whoops, try again. Enter / add, subtract, multiply, or divide. / number 1 / number 2."
      end
  end

end