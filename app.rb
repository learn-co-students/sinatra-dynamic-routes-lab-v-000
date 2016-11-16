require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    @phrase = @words.join(" ")
    "#{@phrase}."
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
    end
  end

end
