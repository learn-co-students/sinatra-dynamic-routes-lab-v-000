require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  		params[:name].reverse
  end
  get '/square/:number' do
    @n = params[:number].to_i
    "#{@n ** 2}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] +params[:word2] +params[:word3] +params[:word4] +params[:word5]
  end
  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end
end
