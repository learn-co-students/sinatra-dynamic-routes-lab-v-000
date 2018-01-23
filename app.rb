require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "The square of the number you provided is: #{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = ""

    params[:number].to_i.times do |i|
      @phrase += "#{params[:phrase]} "
    end

    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]

    when "add"
      @result = params[:number1].to_i + params[:number2].to_i
      "#{@result}"
    when "subtract"
      @result = params[:number1].to_i - params[:number2].to_i
      "#{@result}"
    when "multiply"
      @result = params[:number1].to_i * params[:number2].to_i
      "#{@result}"
    when "divide"
      @result = params[:number1].to_i / params[:number2].to_i
      "#{@result}"
    end
  end

end
