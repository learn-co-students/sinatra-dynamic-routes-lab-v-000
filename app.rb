require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    num = params.values[0].to_i
    square = num * num
    square.to_s
  end

  get "/say/:number/:phrase" do
    params[:number].times do |x|  #params[:number] must be integer
      params[:phrase]
    end
  end

end
