require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @rev = params[:name].reverse
    "#{@rev}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = []
    words[0] = params[:word1]
    words[1] = params[:word2]
    words[2] = params[:word3]
    words[3] = params[:word4]
    words[4] = params[:word5]
    phrase_string = ""
    counter = 0
    until counter == words.size
      phrase_string << "#{words[counter]} "
      counter += 1
    end
    phrase_string.chop! << "."
    "#{phrase_string}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    elsif params[:operation] == "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    else
      "#{params[:number2].to_i - params[:number1].to_i}"
    end
  end
end
