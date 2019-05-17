require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:num' do
    num = params[:num].to_i
    "#{num*num}"
  end

  get '/say/:number/:phrase' do
    phrase = ""
    (params[:number].to_i).times do
      phrase += "#{params[:phrase]}\n"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    sentence
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    operation = params[:operation]
    case operation
    when "add"
      "#{number1 + number2}"
    when "subtract"
      "#{number1 - number2}"
    when "multiply"
      "#{number1 * number2}"
    when "divide"
      "#{number1/number2}"
    end
  end

end
