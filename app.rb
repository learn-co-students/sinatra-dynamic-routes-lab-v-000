require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    full_phrase = ""
    @num.times do
      full_phrase += "#{@phrase} "
    end
    "#{full_phrase.strip}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @one = params[:word1]
    @two = params[:word2]
    @three = params[:word3]
    @four = params[:word4]
    @five = params[:word5]
    "#{@one} #{@two} #{@three} #{@four} #{@five}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @one = params[:number1].to_i
    @two = params[:number2].to_i
    case @operation
    when "add"
      "#{@one + @two}"
    when "subtract"
      "#{@one - @two}"
    when "multiply"
      "#{@one * @two}"
    when "divide"
      "#{@one / @two}"
    end
  end

end
