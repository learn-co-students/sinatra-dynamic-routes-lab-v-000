require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.to_s.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    phrase = ''
    @phrase = params[:phrase]
    @num = params[:number]
    @num.to_i.times do
      phrase += @phrase
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # @word1 = params[word1]
    # @word2 = params[word2]
    # @word3 = params[word3]
    # @word4 = params[word4]
    # @word5 = params[word5]
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
    answer

  end


end
