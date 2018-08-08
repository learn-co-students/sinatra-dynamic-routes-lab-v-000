require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = "#{params[:phrase]}"
    new_phrase = ""
    number.times do
      new_phrase = new_phrase + " " + phrase
    end
    new_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    hash = {"add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}
    op = hash.select{|key, value| key == params[:operation]}.values.first
    value = params[:number1].to_i.send(op, params[:number2].to_i)
    "#{value}"
    end

end
