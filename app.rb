require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name}".reverse 
  end

  get '/square/:number' do
    @number = params[:number] 
    "#{@number.to_i ** 2}"
  end
  
end