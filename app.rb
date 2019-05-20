require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i
    "#{@square * @square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @repeated_phrase = @number.times.collect {@phrase}.join(' ')
    "#{@repeated_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params.values.join(' ')
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]

    case @operation
    when "add"
      "#{@number1 + @number2}"
    when "subtract"
      "#{@number1 - @number2}"
    when "multiply"
      "#{@number1 * @number2}"
    when "divide"
      "#{@number1 / @number2}"
    else
      "Unable to compute"
    end
  end

end
