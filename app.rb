require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end 

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase"
    #@num = params[:number]
    #@phrase = params[:phrase]

    params[:number].to_i.times do 
      "#{params[:phrase]}"
    end 
  end 




end