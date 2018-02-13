require_relative 'config/environment'

class App < Sinatra::Base


  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    "#{params[:phrase]} " * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.values.join(' ')
    "#{@words}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1, @num2 = params.values.slice(1,2)
    if @op.include?("add") || @op.include?("addition")
      "#{@num1.to_i + @num2.to_i}"
    elsif @op.include?("subtract")
      "#{@num1.to_i - @num2.to_i}"
    elsif @op.include?("multiply")
      "#{@num1.to_i * @num2.to_i}"
    else
      "#{@num1.to_i / @num2.to_i}"
    end
  end

end
