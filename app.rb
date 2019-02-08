require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    'Hello World!'
  end

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get '/say/:number/:phrase' do
    phrase = ''

    params[:number].to_i.times {
      phrase += " #{params[:phrase]}"
    }

    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.collect {|key, value|
      value
    }.join(" ") << "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation].downcase
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    else
      "#{@number1/@number2}"
    end
  end

end
