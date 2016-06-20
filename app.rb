require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @revname = params[:name]
    @revname.reverse
  end

  get '/square/:number' do
    @numb = params[:number].to_i
    @square = @numb * @numb
    @square.to_s
  end
end
