require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i**2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @number=params[:number].to_i
    @long_phrase = ""

    @number.times do |i|
       @long_phrase << params[:phrase] + "\n"
    end

    "#{@long_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = ''
    5.times do |i|
      @sentence << params[:"word#{i+1}"] + ' '
    end
    "#{@sentence.chop}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @sum = params[:number1].to_i + params[:number2].to_i
      "#{@sum}"
    elsif params[:operation] == "subtract"
      @difference = params[:number1].to_i - params[:number2].to_i
      "#{@difference}"
    elsif params[:operation] == "multiply"
      @product = params[:number1].to_i * params[:number2].to_i
      "#{@product}"
    elsif params[:operation] == "divide"
      @quotient = params[:number1].to_i / params[:number2].to_i
      "#{@quotient}"
    else
      "Error"
    end

  end
end
