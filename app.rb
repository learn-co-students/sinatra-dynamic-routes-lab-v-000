require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do

    "#{params[:name].reverse}"

  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    phrase = ""
    phrase.tap {
    params[:number].to_i.times { phrase << "#{params[:phrase]}" }
    }
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = params.collect {|k,v| v }.join(" ") << "."
    string
  end

  get '/:operation/:number1/:number2' do
    if params[:operation].downcase == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation].downcase == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation].downcase == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    elsif params[:operation].downcase == "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end

end
