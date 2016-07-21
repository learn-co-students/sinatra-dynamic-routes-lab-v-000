require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number**2}"
  end

  get '/say/:number/:phrase' do
    n_times_phrase = ""
    n = params[:number].to_i
    phrase = params[:phrase]
    n.times do
      n_times_phrase += "#{phrase}\n"
    end
    n_times_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    n1        = params[:number1].to_i
    n2        = params[:number2].to_i
    answer    = ""

    case operation
    when "add"      then answer = n1 + n2
    when "subtract" then answer = n1 - n2
    when "multiply" then answer = n1 * n2
    when "divide"   then answer = n1 / n2
    else answer = "Unable to answer operation."
    end
    answer.to_s
  end
end
