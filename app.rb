require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @factor = params[:number].to_i
    @phrase = params[:phrase]
    @full = []
    @factor.times do
      @full << @phrase
    end
    @full.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = []
    params.each do |key, word|
      @phrase << word
    end
    @phrase.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @one = params[:number1].to_i
    @two = params[:number2].to_i
    case params[:operation]
    when "add"
      @result = @one + @two
      @result.to_s
    when "subtract"
      @result = @one - @two
      @result.to_s
    when "multiply"
      @result = @one * @two
      @result.to_s
    when "divide"
      @result = @one / @two
      @result.to_s
    end
  end
end
