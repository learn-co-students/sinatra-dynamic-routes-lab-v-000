require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    string = ""
    i = 1
    until i > n do
      string += "#{params[:phrase].to_s}\n"
      i += 1
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    if op == "add"
      result = params[:number1].to_i + params[:number2].to_i
    elsif op == "subtract"
      result = params[:number1].to_i - params[:number2].to_i
    elsif op == "multiply"
      result = params[:number1].to_i * params[:number2].to_i
    elsif op == "divide"
      result = params[:number1].to_i / params[:number2].to_i
    end
    result.to_s
  end


end
