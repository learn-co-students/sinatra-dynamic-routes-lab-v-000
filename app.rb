require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
      "#{@phrase} " * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params.values.join(' ')
    "#{@string}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      (@num1 + @num2 ).to_s
    elsif params[:operation] == "subtract"
      (@num1 - @num2 ).to_s
    elsif params[:operation] == "multiply"
      (@num1 * @num2 ).to_s
    else
      (@num1/@num2 ).to_s
    end
  end

end
