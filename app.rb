require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name= params[:name]
    @name.reverse
  end
  
  get '/square/:number' do
    @num= params[:number].to_i
    @sq = @num * @num
    @sq.to_s
  end
  
  get '/say/:number/:phrase' do
    
  end

end