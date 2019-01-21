require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @squared = @number ** 2
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number] #"3"
    @phrase = params[:phrase] 
    # binding.pry
  end


end


# binding.pry
