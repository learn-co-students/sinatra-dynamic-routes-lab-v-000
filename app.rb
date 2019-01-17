require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end

  get "/square/:number" do
    @number = params[:number]
    # try a ** b
    # or Integer.sqrt(2)
  end
end


# binding.pry
