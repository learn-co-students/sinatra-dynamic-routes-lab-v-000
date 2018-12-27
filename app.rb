require_relative 'config/environment'

class App < Sinatra::Base
 get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
 end
 
 get "/square/:number" do
   @num = params[:number].to_i ** 2
    "#{@num}"
 end
 
 get '/say/:number/:phrase' do
    n = params[:number].to_i
    s = ""

    n.times {s << params[:phrase]}
    s
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
   @w = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."  
   "#{@w}"
  end
  
get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation] == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    elsif params[:operation] == "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
  

end