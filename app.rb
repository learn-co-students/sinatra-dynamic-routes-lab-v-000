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
    @num = params[:number]
    "#{@num*@num}"
  end
end
