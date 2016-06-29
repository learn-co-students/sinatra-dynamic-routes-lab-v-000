require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @decoded_name = URI.unescape(params[:name])
    "#{@decoded_name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i
    @square = @square * @square
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    erb :number_phrase
  end

  get '/say/*/*/*/*/*' do
    "#{params['splat'].join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @symbol = "+"
    elsif params[:operation] == "subtract"
      @symbol = "-"
    elsif params[:operation] == "multiply"
      @symbol = "*"
    elsif params[:operation] == "divide"
      @symbol = "/"
    else
      "Oops"
    end
    @symbol.to_sym!

    "#{params[:number1].send(@symbol, params[:number2])}"

  end

end
