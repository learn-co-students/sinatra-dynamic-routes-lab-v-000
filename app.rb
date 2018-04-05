require_relative 'config/environment'
require 'uri'
class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number].to_i * params[:number].to_i
    number.to_s
  end

  get '/say/:number/:phrase' do
    multiplephrases = []
    params[:number].to_i.times do
      multiplephrases << params[:phrase]
    end
    multiplephrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

    if params[:operation] == "add"
      number = params[:number1].to_i + params[:number2].to_i
      number.to_s
    elsif params[:operation] == "subtract"
      number = params[:number1].to_i - params[:number2].to_i
      number.to_s
    elsif params[:operation] == "divide"
      number = params[:number1].to_i / params[:number2].to_i
      number.to_s
    elsif params[:operation] == "multiply"
      number = params[:number1].to_i * params[:number2].to_i
      number.to_s
    end
  end


end
