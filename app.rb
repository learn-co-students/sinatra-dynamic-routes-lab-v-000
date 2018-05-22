require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operations = { "add" => :+,
                    "subtract" => :-,
                    "multiply" => :*,
                    "divide" => :/  }

    @operation = @operations[params[:operation]]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    "#{@number1.send(@operation, @number2)}"
  end
end
