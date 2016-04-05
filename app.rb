require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name_reversed = params[:name].reverse
    "#{@name_reversed}"
  end

  get '/square/:number' do
    @square = (params[:number].to_i ** 2).to_s
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = ""

    @number.times do
      @phrase += params[:phrase] + "\n"
    end

    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params.values.join(" ") + "."
    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      "#{(@num1 + @num2).to_s}"
    when 'subtract'
      "#{(@num1 - @num2).to_s}"
    when 'multiply'
      "#{(@num1 * @num2).to_s}"
    when 'divide'
      "#{(@num1 / @num2).to_s}"
    else
      'Not a valid operation.'
    end
  end



end
