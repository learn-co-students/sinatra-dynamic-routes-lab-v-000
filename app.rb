require_relative 'config/environment'

class App < Sinatra::Base
  #Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.

  get '/reversename/:name' do
    status 200
    @name = params[:name]
    "#{@name}".reverse
  end

  get '/square/:number' do
    status 200
    @number = params[:number].to_i**2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    status 200
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    status 200
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get '/:operation/:number1/:number2' do
    status 200
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
    when 'add'
      "#{@number1 + @number2}"
    when 'multiply'
      "#{@number1 * @number2}"
    when 'subtract'
      "#{@number1 - @number2}"
    when 'divide'
      "#{@number1 / @number2}"
    end
  end

end
