require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_array = []
    word_array << params[:word1].to_s
    word_array << params[:word2].to_s
    word_array << params[:word3].to_s
    word_array << params[:word4].to_s
    word_array << params[:word5].to_s
    "#{word_array.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
      when 'divide'
        "#{@number1 / @number2}"
      when 'multiply'
        "#{@number1 * @number2}"
      when 'subtract'
        "#{@number1 - @number2}"
      when 'add'
        "#{@number1 + @number2}"
    end
  end
end
