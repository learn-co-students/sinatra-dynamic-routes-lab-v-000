require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get 'square/:number' do
    @square = params[:number].to_i.square!.to_s
    "#{@square}"
  end

end
