require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i*params[:number].to_i
    "#{@squared_number.to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@number}"
    "#{@phrase}"

    # i = 0
    # while i < @number
    #   "#{params[:phrase]}"
    #   i = i + 1
    # end
  end

end
