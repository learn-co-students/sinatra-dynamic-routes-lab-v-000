require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/' do
    "<h1>Dynamic Routes Lab</h1>"
  end

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    @count = params[:number].to_i
    @phrase = params[:phrase]*@count
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation].downcase
    when "add"
      @answer = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @answer = params[:number1].to_i / params[:number2].to_i
    when "mod"
      @answer = params[:number1].to_i % params[:number2].to_i
    else
      @answer = "Cannot compute!"
    end
    "#{@answer}"
  end

end
