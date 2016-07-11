require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name].to_s.reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i * params[:number].to_i
    "#{@square_number}.to_s"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase].gsub('$20', " ")
    @number = params[:number].to_i
    ("#{@phrase}\n") * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    @say = @word1+ " " + @word2+ " " + @word3 + " " + @word4 + " " + @word5 + "."
    "#{@say}"
  end

  get '/:operation/:number1/:number2' do
    @add = params[:number1].to_i + params[:number2]
    "#{@add}"
  end
end
