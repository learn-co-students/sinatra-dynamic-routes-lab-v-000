require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    num = params[:number]
    integer = num.to_i**2
    integer.to_s
  end

  get 'say/:number/:phrase' do
    num = params[:number]
    phrase = params[:phrase]
    puts phrase.times.num.to_i
  end

  get 'say/:word1/:word2/:word3/:word4/:word5' do

  end

  get 'say/:operation/:number1/:number2' do
    
  end

end
