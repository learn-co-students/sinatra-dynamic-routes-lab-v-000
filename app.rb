require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name].reverse!
  end
  
  get '/square/:number' do 
    @number = params[:number].to_i * params[:number].to_i 
    @number = @number.to_s 
  end
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    @phrases = String.new 
    @number.times do 
        @phrases = @phrases + @phrase  
    end
    @phrases 
  end
  
  
  
end 