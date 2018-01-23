require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
 
    get '/reversename/:name' do
        params[:name].reverse! 
    end

    get '/square/:number' do
       ((params[:number].to_i)**2).to_s
    end
    
    get '/say/:number/:phrase' do
       n = params[:number].to_i
       p = params[:phrase]
    
       return ("#{p} " * n)
      
    end
    
    get '/say/:word1/:word2/:word3/:word4/:word5' do
       params.collect {|k,v| "#{v}"}.join(' ').to_s + "."
    end
    
    get '/:operation/:number1/:number2' do
       num1 = params[:number1].to_i
       num2 = params[:number2].to_i
       operation = params[:operation]
       
       case operation
       when "add" then (num1 + num2).to_s
       when "subtract" then (num1 - num2).to_s
       when "multiply" then (num1 * num2).to_s
       when "divide" then (num1 / num2).to_s
       end 
    end
end