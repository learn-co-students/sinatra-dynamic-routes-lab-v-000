require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    # binding.pry
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    [@phrase].cycle(@number).to_a.join("\n")
    # @response = []
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # binding.pry
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @add = @number1 + @number2
    @subtract = @number1 - @number2
    @multiply = @number1 * @nubmer2
    @divide = @number1/@number2
  end

end
