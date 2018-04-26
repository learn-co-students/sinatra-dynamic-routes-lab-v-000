require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    "#{params[:phrase] * @number}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    
    if @operation == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif @operation == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif @operation == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    else
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end