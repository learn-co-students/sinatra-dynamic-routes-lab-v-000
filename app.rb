require_relative 'config/environment'
#========================================== 
class App < Sinatra::Base
#==================routes================== 
  # index
#------------------------------------------ 
  get "/" do
  	erb :index
  end
#------------------------------------------ 
  # reverse_name
#------------------------------------------  
  get "/reversename/:name" do
  	erb :reverse_name
  end 
#------------------------------------------ 
  # square_number
#------------------------------------------  
  get "/square/:number" do
  	erb :square_number
  end 
#------------------------------------------ 
  # repeat_phrase
#------------------------------------------  
  get "/say/:number/:phrase" do
  	erb :repeat_phrase
  end 
#------------------------------------------ 
  # concatenate
#------------------------------------------  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @words = [params[:word1],
              params[:word2],
              params[:word3],
              params[:word4],
              params[:word5]]
              
  	erb :concatenate
  end 
#------------------------------------------ 
  # num_operate
#------------------------------------------  
  get "/:operation/:number1/:number2" do
    
    case params[:operation]
    when "add"
      @answer = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @answer = params[:number1].to_i / params[:number2].to_i  
    end
    
  	erb :num_operate
  end 
#========================================== 
end