require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/reversename/:name" do
    #binding.pry
    @name = params[:name]
    #binding.pry
    name_reverse = @name.reverse
    #binding.pry
    name_reverse

  end# Write your code here!

end
