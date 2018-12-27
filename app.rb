require_relative 'config/environment'

class App < Sinatra::Base
 get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
 end
 
 get "/square/:number" do
   @num = params[:number].to_i ** 2
    "#{@num}"
 end
 
  get '/say/:number/:phrase' do
    n = params[:number].to_i
    s = ""

    n.times {s << params[:phrase]}
    s
  end
  

end