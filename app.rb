require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params["name"]
    @name.reverse
  end

  get '/square/:number' do
    @number = params["number"].to_i
    @number *= @number
    @number.to_s
  end

  get '/say/:number/:phrase' do
    @number = params["number"].to_i
    @phrase = params["phrase"] 
    string = ""
    @number.times do 
      string << "#{@phrase}\n"
    end 
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
      when "add"
        number = params[:number1].to_i + params[:number2].to_i
      when "subtract"
        number = params[:number1].to_i - params[:number2].to_i
      when "multiply"
        number = params[:number1].to_i * params[:number2].to_i
      else
        number = params[:number1].to_i / params[:number2].to_i
    end
    number.to_s
  end

end