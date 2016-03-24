require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
    
  end     
    
  get '/square/:number' do
    @number = params[:number]
    @square = ((@number.to_i)**2)
    @square.to_s
  end

  get '/say/:number/:phrase' do
     @phrase = params[:phrase]
     @number = params[:number].to_i
     "#{@phrase}\n" * @number
   end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]}" " " "#{params[:word2]}" " " "#{params[:word3]}" " " "#{params[:word4]}" " " "#{params[:word5]}.\n"
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    operation = params[:operation]
    erb :index
  end


end