require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name_to_reverse = params[:name].reverse
    "#{@name_to_reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @number *= @number
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @new_phrase = ''

    @number.times do
      @new_phrase = @new_phrase + @phrase + "\n"
    end
    "#{@new_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    @sentence = @word1 + ' ' + @word2 + ' ' + @word3 + ' ' + @word4 + ' ' + @word5 + '.'
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @answer = nil

    case @operation
    when "add"
      @answer = @number1 + @number2
    when "subtract"
      @answer = @number1 - @number2
    when "divide"
      @answer = @number1 / @number2
    when "multiply"
      @answer = @number1 * @number2
    end
    "#{@answer}"
  end
end
