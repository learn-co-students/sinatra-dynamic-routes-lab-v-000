require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get 'reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/multiply/:num1/:num2' do
    @multiplied = params[:num1].to_i * params[:num2].to_i
    "#{@multiplied}"
  end
end
