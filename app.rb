require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num * num}"
  end

  get '/say/:number/:phrase' do
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    erb :operation
  end


end
