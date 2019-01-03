require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number_phrase = params[:phrase] * params[:number].to_i
    "#{@number_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @five_words = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @math = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @math = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @math = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @math = params[:number1].to_i / params[:number2].to_i
    end
    "#{@math}"
  end

end