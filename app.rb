require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:number/:phrase' do
    @times = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @times}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num2 = params[:number2]

    if params[:operation] == 'add'
      "#{@num1.to_i + @num2.to_i}"
    elsif params[:operation] == 'subtract'
      "#{@num1.to_i - @num2.to_i}"
    elsif params[:operation] == 'multiply'
      "#{@num1.to_i * @num2.to_i}"
    elsif params[:operation] == 'divide'
      "#{@num1.to_i / @num2.to_i}"
    end
  end

end
