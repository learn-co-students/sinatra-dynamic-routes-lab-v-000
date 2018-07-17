require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
      @user_name = params[:name].reverse!
      "#{@user_name}"
    end

    get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/square/:number" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/say/:number/:phrase" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/:operation/:number1/:number2" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

end
