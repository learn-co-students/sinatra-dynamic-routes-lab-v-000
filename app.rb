require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @num_phrase =  params[:phrase].to_s * params[:number].to_i
    "#{@num_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4 } "+ "#{@word5}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "divide"
      @product = params[:number1].to_i / params[:number2].to_i
    elsif params[:operation] == "add"
      @product = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @product = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @product = params[:number1].to_i * params[:number2].to_i
    end
    "#{@product}"
  end
end
