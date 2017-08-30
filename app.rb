require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get '/say/:number/:phrase' do
    @num, @phrase = params[:number].to_i, params[:phrase]
    Array.new(@num, @phrase).join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @op, @num1, @num2 = params[:operation], params[:number1].to_i, params[:number2].to_i
    case @op
    when "add" then "#{@num1 + @num2}"
    when "subtract" then "#{@num1 - @num2}"
    when "multiply" then "#{@num1 * @num2}"
    when "divide" then "#{@num1 / @num2}"
    end
  end

end
