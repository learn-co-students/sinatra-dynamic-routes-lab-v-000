require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number ** 2}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase]}\n" * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    arr = []

    5.times do |i|
      word = "word#{i+1}".to_sym
      arr << "#{params[word]}"
    end

    arr.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    math = "Math.#{params[:operation]}"
    math.call(params[:number1].to_i, params[:number2].to_i)
  end

end