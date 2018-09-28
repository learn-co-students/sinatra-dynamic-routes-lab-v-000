require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    name_reverse = @name.reverse
    name_reverse
  end

  get "/square/:number" do
    num = params[:number].to_i
    @square = num * num
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * num

  end
    # Write your code here!

end
