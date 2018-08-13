require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reverse/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/reversename/:name' do
    @user_name=params[:name].reverse

  end

  get '/square/:number' do
    @square=params[:number].to_i**2
     @square.to_s
  end

get '/say/:number/:phrase' do
  n=params[:number].to_i
  phrase=params[:phrase]
  final_phrase=""
  for i in 1..n do
    final_phrase+="#{phrase}\n"
  end
  final_phrase
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
 "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
  if params[:operation] == "add"
       answer = params[:number1].to_i + params[:number2].to_i
     elsif params[:operation] == "subtract"
       answer = params[:number1].to_i - params[:number2].to_i
     elsif params[:operation] == "multiply"
       answer = params[:number1].to_i * params[:number2].to_i
     elsif params[:operation] == "divide"
       answer = params[:number1].to_i / params[:number2].to_i
     else
       answer = "Unknown"
     end
     answer.to_s

end
end
