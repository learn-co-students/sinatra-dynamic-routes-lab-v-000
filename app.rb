require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get "/reversename/:name" do
    @user_name = params[:name]

    "#{@user_name.reverse}"
  end
get "/square/:number" do

  x = params[:number.to_i]


end
end
