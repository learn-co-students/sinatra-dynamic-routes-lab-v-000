require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
     @user_name = params[:name].reverse
  #   #binding.pry
  # "#{@username}"
    erb :reversename
  end

  get '/square/:number' do
    @num = params[:number].to_i
    #binding.pry
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @words = params["phrase"]
    #binding.pry
    #{}"#{@num.times do print @words end}"
    #binding.pry
    # erb :say
    "#{@words*@num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params.values.join(" ")
    #inding.pry
    "#{@sentence}."
  end
end
