require_relative 'config/environment'
class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    @s = @num.to_i * @num.to_i
    @s.to_s
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @p = params[:phrase]
    "#{@p}\n" * @n
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " +
    params[:word2] + " " +
    params[:word3] + " " +
    params[:word4] + " " +
    params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    return "#{n1 + n2}" if operation == "add"
    return "#{n1 - n2}" if operation == "subtract"
    return "#{n1 * n2}" if operation == "multiply"
    return "#{n1 / n2}" if operation == "divide"
  end
end
