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

end