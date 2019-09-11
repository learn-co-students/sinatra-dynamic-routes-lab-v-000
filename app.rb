require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @big_phrase = ""
    @number.to_i.times do
      @big_phrase += @phrase
    end
    "#{@big_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @result = 0

    case params[:operation]
    when "add"
      @result = @number1 + @number2
    when "multiply"
      @result = @number1 * @number2
    when "divide"
      @result = @number1 / @number2
    when "subtract"
      @result = @number1 - @number2
    end

    "#{@result}"

  end

end
