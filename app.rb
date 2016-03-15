require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}!"
  end

   get "/square/:number" do
    @num = params[:number].to_i
    "#{@num**2}"
  end

   get "/say/:number/:phrase" do
    "#{params[:phrase]}\n" * params[:number].to_i
  end

   get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:captures].join(' ')}."
  end
  get "/:operation/:number1/:number2" do
  "#{params[:number1].to_i}#{params[:operation].method}#{params[:number2].to_i}"
end
end