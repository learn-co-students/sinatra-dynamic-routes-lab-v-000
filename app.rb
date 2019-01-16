require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse!
  end

  get '/square/:number' do
    200 #expecting an int for status code to be returned, 200
    @number = params[:number].to_i
    @square = (@number ** 2)
    @square.to_s #Expecting a string
  end

  get '/say/:number/:phrase' do
    200
    @number = params[:number]
    @phrase = params[:phrase]
    @phrase * @number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    200
    @sentence = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    200
    case params[:operation]
    when "add"
      @answer = params[:number1].to_i + params[:number2].to_i
      @answer.to_s
    when "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
      @answer.to_s
    when "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
      @answer.to_s
    when "divide"
      @answer = params[:number1].to_i / params[:number2].to_i
      @answer.to_s
    end
  end
end
