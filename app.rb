require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
      @square = (params[:number].to_i ** 2)
     "The square of #{params[:number]} is #{@square}."
  end

  get '/say/:number/:phrase' do
     say = params[:phrase]*params[:number].to_i
    "This phrase repeats:  #{params[:number]} times: #{say}"
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    result = number1, params[:operation], number2
    "#{result}"
  end


end
