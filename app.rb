require_relative 'config/environment'

class App < Sinatra::Base

  #accepts the name and renders name backwards
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase].gsub(' ', '%20')
    @number = params[:number].to_i
    @number.times {"#{@phrase}"}
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1}" + " #{@word2}" + " #{@word3}" + " #{@word4}" + " #{@word5}" + "."
  end
end
