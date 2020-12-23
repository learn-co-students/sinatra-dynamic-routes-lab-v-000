require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end 

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    @total = []

    params[:number].to_i.times do 
      @total << params[:phrase]
    end 
    @total
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    
  end 



end