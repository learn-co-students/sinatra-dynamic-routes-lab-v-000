require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name].reverse
    "#{name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    phrase = params[:phrase]
    string = ''
    n.times do
      string << phrase
    end

    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = (1..5).to_a.map do |n|
      s = "word#{n}".to_s
      params[s]
    end

    "#{words.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when 'add'
      return "#{@num1 + @num2}"
    when 'subtract'
      return "#{@num1 - @num2}"
    when 'multiply'
      return "#{@num1 * @num2}"
    when 'divide'
      return "#{@num1 / @num2}"
    end
  end
end
