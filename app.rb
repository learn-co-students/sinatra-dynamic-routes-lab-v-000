require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @n = params[:number].to_i
    "#{@n*@n}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    repeated = Array.new(@number, @phrase)
    "#{repeated.join('<br>')}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    # @words[0] = @words[0].capitalize
    "#{@words.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    @x = params[:number1].to_i
    @y = params[:number2].to_i
    case params[:operation]
      when 'add'
        sum = @x + @y
        "#{sum}"
      when 'subtract'
        "#{@x-@y}"
      when 'multiply'
        "#{@x*@y}"
      when 'divide'
        "#{@x/@y}"
    end
  end

end
