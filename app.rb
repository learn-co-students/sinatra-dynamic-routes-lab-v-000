require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
    erb :square
  end

  get '/say/:number/:phrase' do
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :say
  end

  get '/:operation/:number1/:number2' do

    n1, n2 = params[:number1].to_i, params[:number2].to_i

    case params[:operation]
    when "add"
      total = n1 + n2
    when "subtract"
      total = n1 - n2
    when "multiply"
      total = n1 * n2
    when "divide"
      total = n1 / n2
    else
      "Not a valid operation"
    end

    total.to_s
  end

end
