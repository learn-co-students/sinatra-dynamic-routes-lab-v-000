require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "Hello World"
  end
  get '/reversename/:name' do
    @name = params[:name].to_s
    "#{@name.reverse}."
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do |number, phrase|
    "#{phrase.to_s * number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5}."
  end

  get '/divide/:number1/:number2' do |number1, number2|
    "#{number1.to_i / number2.to_i}"
  end

  get '/multiply/:number1/:number2' do |number1, number2|
    "#{number1.to_i * number2.to_i}"
  end

  get '/add/:number1/:number2' do |number1, number2|
    "#{number1.to_i + number2.to_i}"
  end

  get '/subtract/:number1/:number2' do |number1, number2|
    "#{number1.to_i - number2.to_i}"
  end
end
