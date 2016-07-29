require_relative 'config/environment'

class App < Sinatra::Base

get 'reversename/:name'
  reversename = name.reverse 
  end



end