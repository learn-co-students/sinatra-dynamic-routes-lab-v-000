require_relative 'config/environment'

class App < Sinatra::Base
 
 get '/reversename/:name' do 
   @name = params[:name].reverse 
  end 
  
  get '/square/:number' do 
     "#{params[:number].to_i ** 2}"
  end 
  
  
  

end