require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    (number ** 2).to_s
  end

  get '/say/:number/:phrase' do
    number, phrase = params[:number].to_i, params[:phrase]
    "#{phrase}\n" * number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation, number1, number2 = params[:operation], params[:number1].to_i, params[:number2].to_i
    case operation
      when "add" then (number1 + number2).to_s
      when "subtract" then (number1 - number2).to_s
      when "multiply" then (number1 * number2).to_s
      when "divide" then (number1 / number2).to_s
      else "Unable to perform this operation"
    end
  end

end
