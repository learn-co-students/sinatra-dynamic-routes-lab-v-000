require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    "My name in reverse is #{params[:name].reverse}"
  end

  get "/square/:number" do
    a = params[:number].to_i
    "The square result is #{a**2}"
  end

  get "/say/:number/:phrase" do
    n = params[:number].to_i
    n.times do
      puts "#{params[:phrase]}"
    end
  end

end
