require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do 
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i**2
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    phrase_arr = Array.new(3,params[:phrase])
    @phrase = phrase_arr.join("\n")
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @output = params[:captures].join("\s") + "."
    "#{@output}"
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @output = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @output = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @output = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @output = params[:number1].to_i / params[:number2].to_i
    else
      @output = "Unrecognized operation"
    end
    "#{@output}"
  end

end