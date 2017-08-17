require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
    @num = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    erb :say_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @msg = ''
    params.each.map { |k,v| @msg += "#{v} "}
    "#{@msg.strip}."
  end

  get '/:operation/:number1/:number2' do
    
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    erb :operation
  end
end
