require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].split("").reverse.join}"
  end

  get '/square/:number' do
    "#{(params[:number].to_i**2).to_s}"
  end

  get '/say/:number/:phrase' do
    new_phrase = []

    params[:number].to_i.times do
      new_phrase << params[:phrase]
    end

    "#{new_phrase.join("\n")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    "#{params[:number1].params[:operation]} #{params[:number2]}"
  end
end
