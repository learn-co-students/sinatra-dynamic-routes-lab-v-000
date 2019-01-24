require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @new = params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do
    @square = (params[:number].to_i) ** 2 
    erb :square 
  end
  
  get '/say/:number/:phrase' do 
    @words = params[:phrase] * (params[:number].to_i)
    erb :say 
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word_list = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    erb :say
  end
    
  get '/:operation/:number1/:number2' do 
    if params[:operation] == "add"
      @answer = (params[:number1].to_i) + (params[:number2].to_i)
    elsif params[:operation] == "subtract"
      @answer = (params[:number1].to_i) - (params[:number2].to_i)
    elsif params[:operation] == "multiply"
      @answer = (params[:number1].to_i) * (params[:number2].to_i)
    elsif params[:operation] == "divide"
      @answer = (params[:number1].to_i) / (params[:number2].to_i)    
    end
    erb :index 
  end
end