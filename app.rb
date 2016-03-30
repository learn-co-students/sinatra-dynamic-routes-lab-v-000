require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    reversed_name = params[:name].reverse
    "#{reversed_name}"
  end

  get '/square/:number' do
    squared_number = params[:number].to_i**2
    "#{squared_number}"
  end

  get '/say/:number/:phrase' do
    phrase = []
    params[:number].to_i.times do
       phrase << params[:phrase]
    end
    "#{phrase.join(',').gsub(',', "\n")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]

    case operation
      when "add"
        result = num1 + num2
      when "subtract"
        result = num1 - num2
      when "multiply"
        result = num1 * num2
      when "divide"
        result = num1 / num2
    end

    "#{result}"
  end
end