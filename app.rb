require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    @name.to_s
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num**2).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    out = ''
    @num.times do
      out << "#{@phrase}\n"
    end
    out
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:captures].join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation].to_s
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i

    "#{@num1}#{@operation.method}#{@num2}"
  end
end
