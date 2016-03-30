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
    number = params[:number].to_i
    phrase = params[:phrase]
    (1..number).map{|number| phrase}.join("\n")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params.values
    words.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case operation
    when "add"
      (number1 + number2).to_s
    when "subtract"
      (number1 - number2).to_s
    when "multiply"
      (number1 * number2).to_s
    when "divide"
      (number1 / number2).to_s
    end
  end

end