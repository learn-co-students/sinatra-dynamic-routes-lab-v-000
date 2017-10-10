require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name =  params[:name].reverse
    erb :reversedname
  end

  get '/square/:number' do
    @num = params[:number].to_i
    erb :squared_number
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    erb :repeater
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :concatenate
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]
    erb :operation
  end

end