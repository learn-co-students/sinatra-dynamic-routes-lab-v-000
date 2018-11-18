require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    #status = 200
  end

  get '/square/:number' do
    (params[:number].to_i * params[:number].to_i).to_s
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase]} " * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    @operation = params[:operation]
#binding.pry
    if @operation == "add"
      (number1 + number2).to_s
    elsif @operation == "subtract"
      (number2 - number1).to_s
    elsif @operation == "multiply"
      (number1 * number2).to_s
    elsif @operation == "divide"
      (number1 / number2).to_s
    end

  end


end
