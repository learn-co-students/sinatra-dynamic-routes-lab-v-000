require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!


  get "/reversename/:name" do
    @user_name = params[:name]

    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    x = params[:number].to_i
    square = x * x
    "#{square}"
  end

  get "/say/:number/:phrase" do
    x = params[:number].to_i
    y = params[:phrase]
  
  end

end
