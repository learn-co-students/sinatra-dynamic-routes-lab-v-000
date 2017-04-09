require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
      "#{ params[:name].reverse}"
  end

   get '/square/:number' do
       "#{ params[:number].to_i * params[:number].to_i}"
   end

   get '/say/:number/:phrase'    do
     count = 1
     str = ""
       while(count <= params[:number].to_i) do str += "#{params[:phrase]}\n"
       count += 1
       end
     str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'    do
      str = params[:word1]+" " +params[:word2]+ " " +params[:word3]+ " " +params[:word4]+ " " +params[:word5]+ "."
  end

  get '/:operation/:number1/:number2'    do
    params[:number1].to_i + params[:operation] +   params[:number2].to_i 
  end
   end