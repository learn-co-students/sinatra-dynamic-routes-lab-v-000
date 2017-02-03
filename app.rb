require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    # "#{params[:number].to_i * params[:number].to_i}"
    (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    @x = params[:number].to_i
    @y = params[:phrase]
    f = ""
    @x.times do # #times returns self, set empty string = var
      f += "#{@y}\n"
    end
    f

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    x = params[:number1].to_i
    y = params[:number2].to_i

    if op == 'add'
      z = x + y
    elsif op == 'subtract'
      z =  x - y
    elsif op == 'multiply'
      z =  x * y
    else
      z =  x / y
    end
    z.to_s
  end
end
